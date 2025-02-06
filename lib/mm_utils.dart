class MmUtils {
  // instance of  MmUtils object
  static MmUtils? instance;

  // AES secret key  for data encryption
  static String _aesSecretKey = "";

  // AES Iv key for data encryption
  static String _aesIvKey = "";

  MmUtils._();

  String getSecretKey() => _aesSecretKey;

  String getIvKey() => _aesIvKey;

  /// Initialize MmUtils
  static MmUtils init({
    required String? secretKey,
    required String? ivKey,
  }) {
    assert(
        secretKey!.isNotEmpty, "Must required secretKey for data encryption");
    assert(ivKey!.isNotEmpty, "Must required ivKey for data encryption");
    MmUtils.instance ??= MmUtils._();
    MmUtils.instance!.initialize(secretKey: secretKey!, ivKey: ivKey!);
    return MmUtils.instance!;
  }

  /// Initialize MenstrualCycleWidget
  void initialize({
    required String secretKey,
    required String ivKey,
  }) {
    _aesSecretKey = secretKey;
    _aesIvKey = ivKey;
  }
}
