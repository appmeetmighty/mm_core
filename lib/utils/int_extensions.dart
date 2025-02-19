// int Extensions
extension IntExtensions on int? {
  /// Validate given int is not null and returns given value if null.
  int validate({int value = 0}) {
    return this ?? value;
  }

  /// HTTP status code
  bool isSuccessful() => this! >= 200 && this! <= 206;
}
