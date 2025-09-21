import 'package:flutter/material.dart';
import 'package:last02/l10n/app_localizations.dart';

enum SocialProvider {
  google,
  facebook,
  email,
}

int getValueProvider(SocialProvider provider) {
  switch (provider) {
    case SocialProvider.google:
      return 1;
    case SocialProvider.facebook:
      return 2;
    case SocialProvider.email:
      return 0;
  }
}

enum Gender {
  male('male'),
  female('female');

  const Gender(this.value);
  final String value;

  String localized(BuildContext context) {
    final appLoc = AppLocalizations.of(context)!;
    switch (this) {
      case Gender.male:
        return appLoc.maleValue;
      case Gender.female:
        return appLoc.femaleValue;
    }
  }

  int getValueGender() {
    switch (this) {
      case Gender.male:
        return 0;
      case Gender.female:
        return 1;
    }
  }

  static Gender? genderFromInt(int? value) {
    switch (value) {
      case 0:
        return Gender.male;
      case 1:
        return Gender.female;
      default:
        return null;
    }
  }
}

enum MotherLanguage {
  japanese('ja'),
  vietnamese('vi'),
  english('en');

  const MotherLanguage(this.code);
  final String code;

  String localized(BuildContext context) {
    final appLoc = AppLocalizations.of(context)!;
    switch (this) {
      case MotherLanguage.japanese:
        return appLoc.languageJa;
      case MotherLanguage.vietnamese:
        return appLoc.languageVi;
      case MotherLanguage.english:
        return appLoc.languageEn;
    }
  }

  String getValueLanguage() {
    switch (this) {
      case MotherLanguage.japanese:
        return 'ja';
      case MotherLanguage.vietnamese:
        return 'vi';
      case MotherLanguage.english:
        return 'en';
    }
  }

  static MotherLanguage? languageFromCode(String? code) {
    switch (code) {
      case 'ja':
        return MotherLanguage.japanese;
      case 'vi':
        return MotherLanguage.vietnamese;
      case 'en':
        return MotherLanguage.english;
      default:
        return null;
    }
  }
}

enum FlashCardStatus {
  newCard('new'),
  memorized('memorized'),
  forgotten('forgotten');

  const FlashCardStatus(this.value);
  final String value;

  int get indexValue {
    switch (this) {
      case FlashCardStatus.newCard:
        return 0;
      case FlashCardStatus.forgotten:
        return 1;
      case FlashCardStatus.memorized:
        return 2;
    }
  }

  static FlashCardStatus fromIndex(int? index) {
    switch (index) {
      case 0:
        return FlashCardStatus.newCard;
      case 1:
        return FlashCardStatus.forgotten;
      case 2:
        return FlashCardStatus.memorized;
      default:
        return FlashCardStatus.newCard;
    }
  }
}
