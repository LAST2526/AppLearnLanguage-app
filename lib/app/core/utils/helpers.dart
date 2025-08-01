import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Helpers {
  static final regex =
      RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^A-Za-z0-9]).{6,}$');
  static final regexEmail =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  static String formatDate(DateTime? date) {
    return '${date?.year}/${date?.month.toString().padLeft(2, '0')}/${date?.day.toString().padLeft(2, '0')}';
  }

  static String formatSendDate(DateTime? date) {
    return '${date?.year}-${date?.month.toString().padLeft(2, '0')}-${date?.day.toString().padLeft(2, '0')}';
  }

  static String formatViewNotifyDate(
    DateTime dateTime,
  ) {
    String languageCode = Get.locale?.languageCode ?? 'ja';
    if (languageCode == 'ja') {
      // Tiếng Nhật: 2025年 7月 15日
      return DateFormat('yyyy年 M月 d日', languageCode).format(dateTime);
    }
    return DateFormat('dd/MM/yyyy', languageCode).format(dateTime);
  }

  static bool isValidBirthDateFormat(String value) {
    return RegExp(r'^\d{4}/\d{2}/\d{2}$').hasMatch(value);
  }

  static String? validatePassword(
    String? value,
    AppLocalizations appLocalization, {
    required String fieldName,
  }) {
    if (value == null || value.isEmpty) {
      return appLocalization.validation_required(fieldName);
    }
    if (value.length < 8) {
      return appLocalization.password_invalid;
    }
    if (value.length > 64) {
      return appLocalization.validation_max_length(fieldName, 64);
    }
    if (!Helpers.regex.hasMatch(value)) {
      return appLocalization.password_invalid;
    }
    return null;
  }

  static String? validateNewPassword(
    String? value,
    AppLocalizations appLocalization, {
    required String fieldName,
  }) {
    if (value == null || value.isEmpty) {
      return appLocalization.validation_required(fieldName);
    }
    if (value.length < 8) {
      return appLocalization.new_password_invalid;
    }
    if (value.length > 64) {
      return appLocalization.validation_max_length(fieldName, 64);
    }
    if (!Helpers.regex.hasMatch(value)) {
      return appLocalization.new_password_invalid;
    }
    return null;
  }

  static String? validateEmail(
    String? value,
    AppLocalizations appLocalization, {
    required String fieldName,
  }) {
    if (value == null || value.isEmpty) {
      return appLocalization.validation_required(fieldName);
    }
    if (value.length > 254) {
      return appLocalization.validation_max_length(fieldName, 254);
    }
    if (!Helpers.regexEmail.hasMatch(value)) {
      return appLocalization.email_invalid;
    }
    return null;
  }

  static String? validateBirthDate(
      String? value, AppLocalizations appLocalization) {
    if (value == null || value.isEmpty) {
      return appLocalization
          .validation_required(appLocalization.birthdateLabel);
    }
    if (!Helpers.isValidBirthDateFormat(value)) {
      return appLocalization.birthdate_invalid;
    }
    return null;
  }

  static String? validateRequired(
    String? value,
    String field,
    AppLocalizations appLocalization,
  ) {
    if (value == null || value.trim().isEmpty) {
      return appLocalization.validation_required(field);
    }
    return null;
  }

  static String? validateMaxLength(
    String? value,
    String field,
    int maxLength,
    AppLocalizations appLocalization,
  ) {
    if (value != null && value.length > maxLength) {
      return appLocalization.validation_max_length(field, maxLength);
    }
    return null;
  }

  static bool isValidBookCodeFormat(String input) {
    final regex = RegExp(
      r'^[A-Za-z0-9]{4}\d{2}(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)\d{2}[A-Za-z0-9]{5}$',
      caseSensitive: false,
    );
    return regex.hasMatch(input);
  }
}
