import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '/app/core/widget/app_bar_title.dart';

//Default appbar customized with the design of our app
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitleText;
  final List<Widget>? actions;
  final bool isBackButtonEnabled;
  final double? fontSize;
  final Widget? customTitle;
  final Widget? leading;

  CustomAppBar({
    Key? key,
    required this.appBarTitleText,
    this.actions,
    this.isBackButtonEnabled = true,
    this.fontSize,
    this.customTitle,
    this.leading,
  }) : super(key: key);

  @override
  Size get preferredSize => AppBar().preferredSize + const Offset(0, 10);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      leading: leading,
      leadingWidth: isBackButtonEnabled ? null : Get.width / 5,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: Color(0xFFE0F3FF),
            ),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFDEF3FD),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
      ),
      centerTitle: true,
      elevation: 0,
      automaticallyImplyLeading: isBackButtonEnabled,
      titleSpacing: 0,
      actions: actions,
      // iconTheme: const IconThemeData(color: AppColors.preColor),
      title:
          customTitle ?? AppBarTitle(text: appBarTitleText, fontSize: fontSize),
    );
  }
}
