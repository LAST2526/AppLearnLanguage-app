import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:last02/app/core/base/base_controller.dart';
import 'package:last02/app/data/local/preference/preference_manager.dart';
import 'package:last02/app/data/models/listen_practice/lession_api_response.dart';
import 'package:last02/app/modules/home/controllers/home_controller.dart';

class SentencePlayerController extends BaseController {
  final player = AudioPlayer();
  final isPlaying = false.obs;
  final isAutoNext = false.obs;
  final showScript = true.obs;
  final duration = Duration.zero.obs;
  final position = Duration.zero.obs;
  final _isCompletionNext = false.obs;
  final isFetching = false.obs;

  final RxList<LessionData> playlist = <LessionData>[].obs;
  final Rx<LessionData?> currentItem = Rx<LessionData?>(null);
  final RxString text = ''.obs;
  int currentPage = 1;
  int minLoadedPage = 1;
  int maxLoadedPage = 1;
  int currentIndex = 0;

  final PreferenceManager preferenceManager =
      Get.find<PreferenceManager>(tag: (PreferenceManager).toString());
  final Rxn<String> currentLocale = Rxn();
  String? previousLocale;

  void loadCurrentLocale(LessionData selectedItem) async {
    final savedLocale = await preferenceManager.getString('locale');
    if (savedLocale == 'vi') {
      text.value = selectedItem.scriptVi ?? '';
    } else if (savedLocale == 'en') {
      text.value = selectedItem.scriptEn ?? '';
    } else {
      text.value = selectedItem.script;
    }
    currentLocale.value = savedLocale;
  }

  void savePreviousLocale(String locale) {
    previousLocale = locale;
  }

  void changeLocaleScript() async {
    previousLocale ??= currentLocale.value;

    if (currentLocale.value == 'vi') {
      currentLocale.value = 'ja';
      text.value = currentItem.value!.script;
      savePreviousLocale('vi');
    } else if (currentLocale.value == 'en') {
      currentLocale.value = 'ja';
      text.value = currentItem.value!.script;
      savePreviousLocale('en');
    } else {
      if (previousLocale == 'vi') {
        currentLocale.value = 'vi';
        text.value = currentItem.value!.scriptVi ?? '';
      } else if (previousLocale == 'en') {
        currentLocale.value = 'en';
        text.value = currentItem.value!.scriptEn ?? '';
      }
    }
  }

  void initialize({
    required List<LessionData> data,
    required LessionData selectedItem,
    int page = 1,
  }) {
    playlist.assignAll(data);
    currentItem.value = selectedItem;
    currentPage = page;
    minLoadedPage = page;
    maxLoadedPage = page;

    currentIndex = data.indexWhere(
      (audio) => audio.audioCode == selectedItem.audioCode,
    );
    loadCurrentLocale(selectedItem);
    loadCurrentTrack();
    player.play();
  }

  @override
  void onInit() {
    super.onInit();
    player.playerStateStream.listen((state) {
      isPlaying.value = state.playing;
    });

    player.durationStream.listen((d) {
      if (d != null) duration.value = d;
    });

    player.positionStream.listen((p) {
      position.value = p;
    });

    player.processingStateStream.listen((state) async {
      if (state == ProcessingState.completed) {
        if (isAutoNext.value && !_isCompletionNext.value) {
          _isCompletionNext.value = true;
          await playNext();
        } else {
          await player.pause();
          await player.seek(Duration.zero);
        }
      }
    });
  }

  Future<void> loadCurrentTrack() async {
    final url = playlist[currentIndex].fileUrl;
    try {
      await player.pause();
      final dur = await player.setUrl(url);
      if (dur == null) {
        await playNext();
        return;
      }
      duration.value = dur;
      position.value = Duration.zero;
      await player.seek(Duration.zero);

      _isCompletionNext.value = false;
    } catch (e) {
      print("Error loading track: $e");
    }
  }

  Future<void> playNext() async {
    final isFree = playlist[currentIndex].isFree;
    final hasreedbook = Get.find<HomeController>().hasRedeemedBook.value;
    print('isFree $isFree hasreedbook $hasreedbook');

    if (currentIndex + 1 >= playlist.length && isFree && hasreedbook) {
      await fetchMoreAudios(isNext: true);
    }

    _isCompletionNext.value = true;
    currentIndex = (currentIndex + 1) % playlist.length;
    currentItem.value = playlist[currentIndex];
    loadCurrentLocale(currentItem.value!);
    await loadCurrentTrack();
    if (isAutoNext.value) {
      await player.play();
    }
  }

  Future<void> playPrevious() async {
    final isFree = playlist[currentIndex].isFree;
    final hasreedbook = Get.find<HomeController>().hasRedeemedBook.value;
    if (currentIndex == 0 && isFree && hasreedbook) {
      await fetchMoreAudios(isNext: false);
    }

    currentIndex = (currentIndex - 1 + playlist.length) % playlist.length;
    currentItem.value = playlist[currentIndex];
    loadCurrentLocale(currentItem.value!);
    await loadCurrentTrack();
  }

  Future<void> fetchMoreAudios({required bool isNext}) async {
    if (isFetching.value) return;
    isFetching.value = true;

    final nextPage = isNext ? maxLoadedPage + 1 : minLoadedPage - 1;
    if (nextPage <= 0) {
      isFetching.value = false;
      return;
    }
    isFetching.value = false;
  }

  void togglePlay() async {
    if (player.playing) {
      await player.pause();
    } else {
      await player.play();
    }
  }

  void toggleAutoNext() => isAutoNext.toggle();

  void seekTo(Duration d) => player.seek(d);

  @override
  void onClose() {
    player.dispose();
    super.onClose();
  }
}
