import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:last02/app/modules/main/model/menu_item.dart';

enum MenuCode { HOME, FAVORITE, SETTINGS }

extension MenuCodeExtensions on MenuCode {
  BottomNavItem toBottomNavItem(AppLocalizations appLocalization) {
    switch (this) {
      case MenuCode.HOME:
        return const BottomNavItem(
          navTitle: "Home",
          iconSvgName: "ic_home.svg",
          menuCode: MenuCode.HOME,
        );
      case MenuCode.FAVORITE:
        return const BottomNavItem(
            navTitle: "Favorite",
            iconSvgName: "ic_favorite.svg",
            menuCode: MenuCode.FAVORITE);
      case MenuCode.SETTINGS:
        return const BottomNavItem(
            navTitle: "Settings",
            iconSvgName: "ic_settings.svg",
            menuCode: MenuCode.SETTINGS);
    }
  }
}
