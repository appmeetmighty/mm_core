import 'package:flutter/material.dart';

class MmUtils {
  // instance of  MmUtils object
  static MmUtils? instance;

  // AES secret key  for data encryption
  static String _aesSecretKey = "";

  // AES Iv key for data encryption
  static String _aesIvKey = "";

  // baseUrl to call apis
  static String _baseUrl = "";

  static String _apiPath = "";

  static String _authToken = "";

  static String _appName = "";

  static bool? _isEncryptData;

  // to check is print logs
  static bool _isPrintLog = true;

  static GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  MmUtils._();

  String getSecretKey() => _aesSecretKey;

  String getIvKey() => _aesIvKey;

  String getBaseUrl() => _baseUrl;

  String getApiPath() => _apiPath;

  String getToken() => _authToken;

  String getAppName() => _appName;

  bool isPrintLog() => _isPrintLog;

  bool isEncryptData() {
    // if (kDebugMode) {
    if (_isEncryptData != null) {
      return _isEncryptData!;
    }
    return false;
    // } else {
    //   return _isEncryptData ?? false;
    // }
  }

  GlobalKey<NavigatorState> getNavigatorStateKey() => _navigatorKey;

  /// Initialize MmUtils
  static MmUtils init({
    required String? secretKey,
    required String? ivKey,
    required String? appName,
    required String? apiPath,
    required String? baseUrl,
    required bool? isEncryptData,
    required GlobalKey<NavigatorState> navigatorKey,
  }) {
    assert(
        secretKey!.isNotEmpty, "Must required secretKey for data encryption");
    assert(ivKey!.isNotEmpty, "Must required ivKey for data encryption");
    assert(baseUrl!.isNotEmpty, "Must required base Url to call apis");
    assert(appName!.isNotEmpty, "Must required app name for logs");

    MmUtils.instance ??= MmUtils._();
    MmUtils.instance!.initialize(
        secretKey: secretKey!,
        ivKey: ivKey!,
        baseUrl: baseUrl!,
        appName: appName!,
        apiPath: apiPath!,
        isEncryptData: isEncryptData!,
        navigatorKey: navigatorKey);
    return MmUtils.instance!;
  }

  /// Initialize MenstrualCycleWidget
  void initialize(
      {required String secretKey,
      required String ivKey,
      required String baseUrl,
      required String apiPath,
      required String appName,
      required bool isEncryptData,
      required GlobalKey<NavigatorState> navigatorKey}) {
    _aesSecretKey = secretKey;
    _aesIvKey = ivKey;
    _baseUrl = baseUrl;
    _appName = appName;
    _apiPath = apiPath;
    _navigatorKey = navigatorKey;
    _isEncryptData = isEncryptData;
  }

  void updateConfiguration({String? authToken, bool? isPrintLogs}) {
    if (authToken != null) {
      _authToken = authToken;
    }
    if (isPrintLogs != null) {
      _isPrintLog = isPrintLogs;
    }
  }
}
