import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last02/l10n/app_localizations.dart';
import '../controllers/login_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LanguageDropdown extends StatelessWidget {
  final LoginController controller;
  final double buttonWidth;
  final double dropdownWidth;
  const LanguageDropdown(
      {super.key,
      required this.buttonWidth,
      required this.dropdownWidth,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    final appLocalization = AppLocalizations.of(context)!;

    String getLangName(String code) {
      switch (code) {
        // case 'ja':
        //   return appLocalization.languageJa;
        case 'vi':
          return appLocalization.languageVi;
        case 'en':
          return appLocalization.languageEn;
        default:
          return code;
      }
    }

    String getTitle() => appLocalization.selectLanguage;

    return Obx(() {
      final currentLang = controller.languages.firstWhere(
        (lang) => lang['code'] == controller.currentLocale.value.languageCode,
        orElse: () => controller.languages.first,
      );

      return DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          customButton: Container(
            width: buttonWidth,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                    child: Text(
                  getLangName(currentLang['code'] as String),
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: getFontSize(16),
                    color: AppColors.blackColor,
                  ),
                  overflow: TextOverflow.visible,
                )),
                const SizedBox(width: 6),
                SvgPicture.asset(
                  currentLang['icon'] as String,
                  width: getSize(24),
                  height: getSize(24),
                ),
              ],
            ),
          ),
          items: [
            DropdownMenuItem<String>(
              enabled: false,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 4, left: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      getTitle(),
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: getFontSize(16),
                        color: AppColors.disabledColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ...controller.languages
                .where((lang) =>
                    lang['code'] != controller.currentLocale.value.languageCode)
                .map(
                  (lang) => DropdownMenuItem<String>(
                      value: lang['code'] as String,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 28),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              getLangName(lang['code'] as String),
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: getFontSize(16),
                                height: 1.4,
                                color: AppColors.blackColor,
                              ),
                            ),
                            const SizedBox(width: 6),
                            SvgPicture.asset(
                              allowDrawingOutsideViewBox: true,
                              lang['icon'] as String,
                              width: getSize(24),
                              height: getSize(24),
                            ),
                          ],
                        ),
                      )),
                ),
          ],
          onChanged: (code) {
            if (code != null) {
              controller.changeLocale(Locale(code));
            }
          },
          dropdownStyleData: DropdownStyleData(
            width: dropdownWidth,
            elevation: 0,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 247, 246, 246),
                borderRadius: BorderRadius.circular(12),
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.blackColor.withOpacity(0.35),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ]),
            offset: const Offset(60, -6),
          ),
          buttonStyleData: const ButtonStyleData(
            height: 42,
            overlayColor: WidgetStateColor.transparent,
          ),
          menuItemStyleData: const MenuItemStyleData(
            padding: EdgeInsets.only(right: 8),
          ),
        ),
      );
    });
  }
}
