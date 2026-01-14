import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ja'),
    Locale('vi')
  ];

  /// No description provided for @logo.
  ///
  /// In en, this message translates to:
  /// **'Logo'**
  String get logo;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @languageVi.
  ///
  /// In en, this message translates to:
  /// **'Vietnamese'**
  String get languageVi;

  /// No description provided for @languageEn.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEn;

  /// No description provided for @languageJa.
  ///
  /// In en, this message translates to:
  /// **'Japanese'**
  String get languageJa;

  /// No description provided for @loginAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Log in to your account'**
  String get loginAccountTitle;

  /// No description provided for @loginAccountSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome back. Please enter your details.'**
  String get loginAccountSubtitle;

  /// No description provided for @loginByGoogle.
  ///
  /// In en, this message translates to:
  /// **'Login with Google'**
  String get loginByGoogle;

  /// No description provided for @loginByFacebook.
  ///
  /// In en, this message translates to:
  /// **'Login with Facebook'**
  String get loginByFacebook;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'Or'**
  String get or;

  /// No description provided for @emailLabel.
  ///
  /// In en, this message translates to:
  /// **'E-mail'**
  String get emailLabel;

  /// No description provided for @emailPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Enter your email address'**
  String get emailPlaceholder;

  /// No description provided for @passwordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordLabel;

  /// No description provided for @passwordPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get passwordPlaceholder;

  /// No description provided for @passwordShowIcon.
  ///
  /// In en, this message translates to:
  /// **'Show password icon'**
  String get passwordShowIcon;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgotPassword;

  /// No description provided for @loginButton.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginButton;

  /// No description provided for @noAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? Tap here'**
  String get noAccount;

  /// No description provided for @registerButton.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get registerButton;

  /// No description provided for @registerAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Register an account'**
  String get registerAccountTitle;

  /// No description provided for @registerAccountSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign up now to get started with your account.'**
  String get registerAccountSubtitle;

  /// No description provided for @registerWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Register with Google'**
  String get registerWithGoogle;

  /// No description provided for @registerWithFacebook.
  ///
  /// In en, this message translates to:
  /// **'Register with Facebook'**
  String get registerWithFacebook;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get confirmPassword;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get resetPassword;

  /// No description provided for @birthdateLabel.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get birthdateLabel;

  /// No description provided for @sendEmail.
  ///
  /// In en, this message translates to:
  /// **'Send E-mail'**
  String get sendEmail;

  /// No description provided for @emailSentNotice.
  ///
  /// In en, this message translates to:
  /// **'A new password has been sent to your email. Please check your email.'**
  String get emailSentNotice;

  /// No description provided for @errorForgotPassMessage.
  ///
  /// In en, this message translates to:
  /// **'Email address and birthdate do not match.'**
  String get errorForgotPassMessage;

  /// No description provided for @basicInfo.
  ///
  /// In en, this message translates to:
  /// **'Basic Information'**
  String get basicInfo;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @birthdate.
  ///
  /// In en, this message translates to:
  /// **'Birthdate'**
  String get birthdate;

  /// No description provided for @nationality.
  ///
  /// In en, this message translates to:
  /// **'Nationality'**
  String get nationality;

  /// No description provided for @residenceCountry.
  ///
  /// In en, this message translates to:
  /// **'Country of Residence'**
  String get residenceCountry;

  /// No description provided for @residenceCountryProfile.
  ///
  /// In en, this message translates to:
  /// **'Current Country of Residence'**
  String get residenceCountryProfile;

  /// No description provided for @occupation.
  ///
  /// In en, this message translates to:
  /// **'Occupation'**
  String get occupation;

  /// No description provided for @visaStatus.
  ///
  /// In en, this message translates to:
  /// **'Visa Status'**
  String get visaStatus;

  /// No description provided for @visaStatusProfile.
  ///
  /// In en, this message translates to:
  /// **'Type of Visa'**
  String get visaStatusProfile;

  /// No description provided for @nativeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Native Language'**
  String get nativeLanguage;

  /// No description provided for @nativeLanguageInputUser.
  ///
  /// In en, this message translates to:
  /// **'Mother tongue'**
  String get nativeLanguageInputUser;

  /// No description provided for @course.
  ///
  /// In en, this message translates to:
  /// **'Course'**
  String get course;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @maleValue.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get maleValue;

  /// No description provided for @femaleValue.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get femaleValue;

  /// No description provided for @visaStudent.
  ///
  /// In en, this message translates to:
  /// **'Student Visa'**
  String get visaStudent;

  /// No description provided for @visaIntern.
  ///
  /// In en, this message translates to:
  /// **'Internship'**
  String get visaIntern;

  /// No description provided for @visaTokutei.
  ///
  /// In en, this message translates to:
  /// **'Specified Skilled Worker'**
  String get visaTokutei;

  /// No description provided for @visaOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get visaOther;

  /// No description provided for @courseN3.
  ///
  /// In en, this message translates to:
  /// **'N3 Course'**
  String get courseN3;

  /// No description provided for @changePasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePasswordTitle;

  /// No description provided for @currentPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Current Password'**
  String get currentPasswordLabel;

  /// No description provided for @newPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPasswordLabel;

  /// No description provided for @confirmNewPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm New Password'**
  String get confirmNewPasswordLabel;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChanges;

  /// No description provided for @emailError.
  ///
  /// In en, this message translates to:
  /// **'E-mail'**
  String get emailError;

  /// No description provided for @emailProfile.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailProfile;

  /// No description provided for @email_already_exists.
  ///
  /// In en, this message translates to:
  /// **'E-mail is already registered'**
  String get email_already_exists;

  /// No description provided for @email_not_found.
  ///
  /// In en, this message translates to:
  /// **'Email address not found'**
  String get email_not_found;

  /// No description provided for @email_invalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address.'**
  String get email_invalid;

  /// No description provided for @email_too_long.
  ///
  /// In en, this message translates to:
  /// **'Email must not exceed 254 characters.'**
  String get email_too_long;

  /// No description provided for @password_too_long.
  ///
  /// In en, this message translates to:
  /// **'Password must not exceed 64 characters.'**
  String get password_too_long;

  /// No description provided for @password_too_short.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters.'**
  String get password_too_short;

  /// No description provided for @password_invalid.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters and include lowercase, uppercase, numbers, and special characters.'**
  String get password_invalid;

  /// No description provided for @password_not_correct.
  ///
  /// In en, this message translates to:
  /// **'Incorrect password.'**
  String get password_not_correct;

  /// No description provided for @confirm_password_mismatch.
  ///
  /// In en, this message translates to:
  /// **'Password and Confirm Password do not match.'**
  String get confirm_password_mismatch;

  /// No description provided for @birthdate_invalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter your birthdate in the format \'yyyy/mm/dd\'.'**
  String get birthdate_invalid;

  /// No description provided for @register_failed.
  ///
  /// In en, this message translates to:
  /// **'Registration failed.'**
  String get register_failed;

  /// No description provided for @login_failed.
  ///
  /// In en, this message translates to:
  /// **'Incorrect account or password.'**
  String get login_failed;

  /// No description provided for @google_token_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to retrieve token from Google.'**
  String get google_token_failed;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Login was cancelled by the user.'**
  String get cancelled;

  /// No description provided for @input_email_birthdate.
  ///
  /// In en, this message translates to:
  /// **'Please enter both email and birthdate.'**
  String get input_email_birthdate;

  /// No description provided for @password_reset_success_message.
  ///
  /// In en, this message translates to:
  /// **'A new password has been sent to your email.\nPlease check your inbox.'**
  String get password_reset_success_message;

  /// No description provided for @password_reset_success_button.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get password_reset_success_button;

  /// No description provided for @password_reset_fail_message.
  ///
  /// In en, this message translates to:
  /// **'Email and birthdate do not match.'**
  String get password_reset_fail_message;

  /// No description provided for @password_reset_fail_button.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get password_reset_fail_button;

  /// No description provided for @password_same_as_current.
  ///
  /// In en, this message translates to:
  /// **'New password cannot be the same as current password.'**
  String get password_same_as_current;

  /// No description provided for @login_success_message.
  ///
  /// In en, this message translates to:
  /// **'Login successful.'**
  String get login_success_message;

  /// No description provided for @login_fail_message.
  ///
  /// In en, this message translates to:
  /// **'Login failed. Please check your information.'**
  String get login_fail_message;

  /// No description provided for @change_password_success_message.
  ///
  /// In en, this message translates to:
  /// **'Password changed successfully.'**
  String get change_password_success_message;

  /// No description provided for @change_password_success_button.
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get change_password_success_button;

  /// No description provided for @change_password_fail_message.
  ///
  /// In en, this message translates to:
  /// **'Password change failed. Please try again.'**
  String get change_password_fail_message;

  /// No description provided for @register_success_message.
  ///
  /// In en, this message translates to:
  /// **'Account registration successful.'**
  String get register_success_message;

  /// No description provided for @register_fail_message.
  ///
  /// In en, this message translates to:
  /// **'Registration failed. Please check your information.'**
  String get register_fail_message;

  /// No description provided for @login_cancelled.
  ///
  /// In en, this message translates to:
  /// **'You cancelled the login'**
  String get login_cancelled;

  /// No description provided for @learn_to_study.
  ///
  /// In en, this message translates to:
  /// **'Learning!'**
  String get learn_to_study;

  /// No description provided for @known.
  ///
  /// In en, this message translates to:
  /// **'Review!'**
  String get known;

  /// No description provided for @learned.
  ///
  /// In en, this message translates to:
  /// **'Mastered!'**
  String get learned;

  /// No description provided for @flash_card_title.
  ///
  /// In en, this message translates to:
  /// **'Topic'**
  String get flash_card_title;

  /// No description provided for @left_guide_bold.
  ///
  /// In en, this message translates to:
  /// **'swipe left'**
  String get left_guide_bold;

  /// No description provided for @left_guide_normal.
  ///
  /// In en, this message translates to:
  /// **'If you don\'t remember'**
  String get left_guide_normal;

  /// No description provided for @right_guide_bold.
  ///
  /// In en, this message translates to:
  /// **'swipe right'**
  String get right_guide_bold;

  /// No description provided for @right_guide_normal.
  ///
  /// In en, this message translates to:
  /// **'If you remember'**
  String get right_guide_normal;

  /// No description provided for @unknown_label.
  ///
  /// In en, this message translates to:
  /// **'Don\'t remember'**
  String get unknown_label;

  /// No description provided for @known_label.
  ///
  /// In en, this message translates to:
  /// **'Remembered'**
  String get known_label;

  /// No description provided for @done_flash_card.
  ///
  /// In en, this message translates to:
  /// **'Lesson completed.'**
  String get done_flash_card;

  /// No description provided for @error_server.
  ///
  /// In en, this message translates to:
  /// **'A system error occurred. Please try again later.'**
  String get error_server;

  /// No description provided for @auto_next.
  ///
  /// In en, this message translates to:
  /// **'Auto play'**
  String get auto_next;

  /// No description provided for @play_random.
  ///
  /// In en, this message translates to:
  /// **'Shuffle play'**
  String get play_random;

  /// No description provided for @show_script.
  ///
  /// In en, this message translates to:
  /// **'Show subtitles'**
  String get show_script;

  /// No description provided for @example.
  ///
  /// In en, this message translates to:
  /// **'Grammar'**
  String get example;

  /// No description provided for @audio.
  ///
  /// In en, this message translates to:
  /// **'Conversation'**
  String get audio;

  /// No description provided for @account_label.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account_label;

  /// No description provided for @update_info.
  ///
  /// In en, this message translates to:
  /// **'Edit information'**
  String get update_info;

  /// No description provided for @update_confirm.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update_confirm;

  /// No description provided for @update_info_label.
  ///
  /// In en, this message translates to:
  /// **'Basic Information'**
  String get update_info_label;

  /// No description provided for @user_info.
  ///
  /// In en, this message translates to:
  /// **'User Information'**
  String get user_info;

  /// No description provided for @system_setting.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get system_setting;

  /// No description provided for @change_password.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get change_password;

  /// No description provided for @language_setting.
  ///
  /// In en, this message translates to:
  /// **'Language Selection'**
  String get language_setting;

  /// No description provided for @app_version.
  ///
  /// In en, this message translates to:
  /// **'App Version'**
  String get app_version;

  /// No description provided for @log_out.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get log_out;

  /// No description provided for @scan_qr_code.
  ///
  /// In en, this message translates to:
  /// **'Scan QR Code'**
  String get scan_qr_code;

  /// No description provided for @qr_code.
  ///
  /// In en, this message translates to:
  /// **'QR Code'**
  String get qr_code;

  /// No description provided for @n3_exam.
  ///
  /// In en, this message translates to:
  /// **'N3 Exam Practice'**
  String get n3_exam;

  /// No description provided for @flashcard.
  ///
  /// In en, this message translates to:
  /// **'Vocabulary Flashcards'**
  String get flashcard;

  /// No description provided for @progress.
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get progress;

  /// No description provided for @voice.
  ///
  /// In en, this message translates to:
  /// **'Listen'**
  String get voice;

  /// No description provided for @dialog_unlock_desc.
  ///
  /// In en, this message translates to:
  /// **'Enter the book code that comes with the exam prep book to unlock all content.'**
  String get dialog_unlock_desc;

  /// No description provided for @book_code.
  ///
  /// In en, this message translates to:
  /// **'Book Code'**
  String get book_code;

  /// No description provided for @book_code_invalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid book code format.'**
  String get book_code_invalid;

  /// No description provided for @unlock.
  ///
  /// In en, this message translates to:
  /// **'Unlock'**
  String get unlock;

  /// No description provided for @no_data_value.
  ///
  /// In en, this message translates to:
  /// **'No data available to display'**
  String get no_data_value;

  /// No description provided for @qr_invalid_title.
  ///
  /// In en, this message translates to:
  /// **'Invalid QR Code.'**
  String get qr_invalid_title;

  /// No description provided for @qr_invalid_message.
  ///
  /// In en, this message translates to:
  /// **'Please scan a valid QR code.'**
  String get qr_invalid_message;

  /// No description provided for @title_list_notification.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get title_list_notification;

  /// No description provided for @mark_all_as_read.
  ///
  /// In en, this message translates to:
  /// **'Mark all as read'**
  String get mark_all_as_read;

  /// No description provided for @registerNotify.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get registerNotify;

  /// No description provided for @closeDialogNotify.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get closeDialogNotify;

  /// No description provided for @noNotify.
  ///
  /// In en, this message translates to:
  /// **'You have no notifications'**
  String get noNotify;

  /// Notification when email is sent successfully
  ///
  /// In en, this message translates to:
  /// **'Email sent to {email}'**
  String mailSentMessage(String email);

  /// No description provided for @fromLibrary.
  ///
  /// In en, this message translates to:
  /// **'Choose from Library'**
  String get fromLibrary;

  /// No description provided for @takePicture.
  ///
  /// In en, this message translates to:
  /// **'Take Photo'**
  String get takePicture;

  /// No description provided for @validation_required.
  ///
  /// In en, this message translates to:
  /// **'Please enter {field}.'**
  String validation_required(String field);

  /// No description provided for @validation_max_length.
  ///
  /// In en, this message translates to:
  /// **'{field} must be no more than {number} characters.'**
  String validation_max_length(String field, int number);

  /// No description provided for @new_password_invalid.
  ///
  /// In en, this message translates to:
  /// **'New password is invalid'**
  String get new_password_invalid;

  /// No description provided for @error_common.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error_common;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ja', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ja': return AppLocalizationsJa();
    case 'vi': return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
