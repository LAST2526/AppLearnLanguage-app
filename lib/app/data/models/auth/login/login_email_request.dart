import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_email_request.freezed.dart';
part 'login_email_request.g.dart';

@freezed
class LoginEmailRequest with _$LoginEmailRequest {
  const factory LoginEmailRequest({
    required String email,
    required String password,
  }) = _LoginEmailRequest;

  factory LoginEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginEmailRequestFromJson(json);
}
