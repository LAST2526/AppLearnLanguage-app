import 'package:last02/app/core/values/enum_values.dart';

class OAuthSocialRequest {
  final String socialProviderToken;
  final SocialProvider provider;

  OAuthSocialRequest({
    required this.socialProviderToken,
    required this.provider,
  });

  Map<String, dynamic> toJson() {
    return {
      'socialProviderToken': socialProviderToken,
      'provider': _mapProviderToInt(provider),
    };
  }

  int _mapProviderToInt(SocialProvider provider) {
    switch (provider) {
      case SocialProvider.google:
        return 1;
      case SocialProvider.facebook:
        return 2;
      case SocialProvider.email:
        return 0;
    }
  }
}
