import 'package:internet_connection_checker/internet_connection_checker.dart';

/// Checks if the network is available.
/// Returns `true` if connected to the internet, otherwise `false`.

Future<bool> isNetworkAvailable() async {
  final bool isConnected =
      await InternetConnectionChecker.instance.hasConnection;
  if (isConnected) {
    return true;
  } else {
    return false;
  }
}
