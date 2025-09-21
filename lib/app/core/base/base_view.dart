import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:last02/app/core/models/page_state.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/core/widget/loading.dart';
import 'package:last02/l10n/app_localizations.dart';
import 'package:logger/logger.dart';

import '/app/core/base/base_controller.dart';
import '/flavors/build_config.dart';

abstract class BaseView<Controller extends BaseController>
    extends GetView<Controller> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  AppLocalizations get appLocalization => AppLocalizations.of(Get.context!)!;

  final Logger logger = BuildConfig.instance.config.logger;

  Widget body(BuildContext context);

  PreferredSizeWidget? appBar(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          annotatedRegion(context),
          Obx(() => controller.pageState == PageState.LOADING
              ? _showLoading()
              : Container()),
          Obx(() => controller.errorMessage.isNotEmpty
              ? showErrorSnackBar(controller.errorMessage)
              : Container()),
          Container(),
        ],
      ),
    );
  }

  Widget annotatedRegion(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        //Status bar color for android
        statusBarColor: statusBarColor(),
        statusBarIconBrightness: androidStatusBarBrightness(),
        statusBarBrightness: iosStatusBarBrightness(),
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Material(
        elevation: 0,
        color: Colors.transparent,
        child: pageScaffold(context),
      ),
    );
  }

  Widget pageScaffold(BuildContext context) {
    return Scaffold(
      //sets ios status bar color
      backgroundColor: pageBackgroundColor(),
      key: globalKey,
      appBar: appBar(context),
      floatingActionButton: floatingActionButton(),
      body: pageContent(context),
      bottomNavigationBar: bottomNavigationBar(),
      drawer: drawer(),
    );
  }

  Widget pageContent(BuildContext context) {
    return SafeArea(
      bottom: false,
      top: false,
      child: body(context),
    );
  }

  Widget showErrorSnackBar(String message) {
    if (message.isEmpty) return const SizedBox.shrink();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final isDialogOpen = Get.isDialogOpen ?? false;
      if (!isDialogOpen) {
        // Get.dialog(DialogError(message: message)).then((value) {
        //   controller.errorMessage = '';
        // });
      }
    });

    return const SizedBox.shrink();
  }

  void showToast(String message) {
    Fluttertoast.showToast(
        msg: message, toastLength: Toast.LENGTH_SHORT, timeInSecForIosWeb: 1);
  }

  Color pageBackgroundColor() {
    return AppColors.pageBackground;
  }

  Color statusBarColor() {
    return Colors.transparent;
  }

  Widget? floatingActionButton() {
    return null;
  }

  Widget? bottomNavigationBar() {
    return null;
  }

  Widget? drawer() {
    return null;
  }

  Widget _showLoading() {
    return const Loading();
  }

  Brightness androidStatusBarBrightness() {
    return Brightness.dark;
  }

  Brightness iosStatusBarBrightness() {
    return Brightness.light;
  }
}
