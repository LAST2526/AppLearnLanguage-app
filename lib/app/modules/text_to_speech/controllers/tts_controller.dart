import 'dart:io';
import 'package:last02/app/core/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';

class TTSController extends BaseController {
  final FlutterTts flutterTts = FlutterTts();
  final RxBool isInitialized = false.obs;
  final RxBool isSpeaking = false.obs;
  VoidCallback? onCompletedExternal;

  @override
  void onInit() {
    super.onInit();
    initTts();
  }

  Future<void> initTts() async {
    try {
      await flutterTts.setLanguage('ja-JP');
      await flutterTts.setVolume(1.0);
      await flutterTts.setPitch(1.0);

      flutterTts.setStartHandler(() {
        isSpeaking.value = true;
      });

      flutterTts.setCompletionHandler(() {
        isSpeaking.value = false;
        onCompletedExternal?.call();
      });

      flutterTts.setErrorHandler((error) {
        isSpeaking.value = false;
      });

      if (Platform.isAndroid) {
        final engines = await flutterTts.getEngines;
        print('Available TTS engines: $engines');
      }

      isInitialized.value = true;
    } catch (e) {
      print('Error initializing TTS: $e');
      Get.snackbar(
        'Error',
        'Failed to initialize Text-to-Speech: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  Future<void> speak(String text) async {
    if (!isInitialized.value) {
      Get.snackbar(
        'Error',
        'Text-to-Speech is not initialized yet. Please wait.',
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (text.isEmpty) {
      return;
    }

    try {
      await stop();
      await Future.delayed(const Duration(milliseconds: 100));
      final result = await flutterTts.speak(text);
      print('Speak result: $result');

      if (result != 1) {
        Get.snackbar(
          'Error',
          'Failed to start speaking. Error code: $result',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      print('Error speaking: $e');
      Get.snackbar(
        'Error',
        'Failed to speak text: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  Future<void> stop() async {
    try {
      await flutterTts.stop();
      isSpeaking.value = false;
    } catch (e) {
      print('Error stopping: $e');
      Get.snackbar(
        'Error',
        'Failed to stop speaking: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void setExternalCompletion(VoidCallback callback) {
    onCompletedExternal = callback;
  }

  @override
  void onClose() {
    flutterTts.stop();
    super.onClose();
  }
}
