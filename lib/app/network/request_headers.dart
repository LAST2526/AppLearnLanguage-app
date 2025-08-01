import 'package:dio/dio.dart';
import 'package:get/get.dart' as getx;
import '/app/data/local/preference/preference_manager.dart';
import '/app/routes/app_pages.dart';

class RequestHeaderInterceptor extends InterceptorsWrapper {
  final PreferenceManager _preferenceManager =
      getx.Get.find<PreferenceManager>(tag: (PreferenceManager).toString());

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    getCustomHeaders().then((customHeaders) {
      _preferenceManager.getString(PreferenceManager.keyToken).then((token) {
        if (token.isNotEmpty) {
          customHeaders['Authorization'] = 'Bearer $token';
        }

        options.headers.addAll(customHeaders);
        super.onRequest(options, handler);
      });
    });
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.data is Map && response.data.containsKey('token')) {
      final String token = response.data['token'];

      _preferenceManager.setString(PreferenceManager.keyToken, token).then((_) {
        if (response.requestOptions.path.contains('login')) {
          getx.Get.offAllNamed(Routes.MAIN);
        }
      });
    }

    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      _preferenceManager.remove(PreferenceManager.keyToken).then((_) {
        getx.Get.offAllNamed(Routes.LOGIN);
      });
    }

    super.onError(err, handler);
  }

  Future<Map<String, String>> getCustomHeaders() async {
    var customHeaders = {
      'content-type': 'application/json',
      'Accept-Language': getx.Get.locale?.languageCode ?? 'ja'
    };
    return customHeaders;
  }
}
