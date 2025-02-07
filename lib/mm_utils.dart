class MmUtils {
  // instance of  MmUtils object
  static MmUtils? instance;

  // AES secret key  for data encryption
  static String _aesSecretKey = "";

  // AES Iv key for data encryption
  static String _aesIvKey = "";

  // baseUrl to call apis
  static String _baseUrl = "";

  MmUtils._();

  String getSecretKey() => _aesSecretKey;

  String getIvKey() => _aesIvKey;

  String getBaseUrl() => _baseUrl;

  /// Initialize MmUtils
  static MmUtils init({
    required String? secretKey,
    required String? ivKey,
    required String? baseUrl,
  }) {
    assert(
        secretKey!.isNotEmpty, "Must required secretKey for data encryption");
    assert(ivKey!.isNotEmpty, "Must required ivKey for data encryption");
    MmUtils.instance ??= MmUtils._();
    MmUtils.instance!
        .initialize(secretKey: secretKey!, ivKey: ivKey!, baseUrl: baseUrl!);
    return MmUtils.instance!;
  }

  /// Initialize MenstrualCycleWidget
  void initialize({
    required String secretKey,
    required String ivKey,
    required String baseUrl,
  }) {
    _aesSecretKey = secretKey;
    _aesIvKey = ivKey;
    _baseUrl = baseUrl;
  }
}
