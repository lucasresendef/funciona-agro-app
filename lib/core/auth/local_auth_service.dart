import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

final localAuthenticationProvider = Provider<LocalAuthentication>((ref) {
  return LocalAuthentication();
});

final localAuthServiceProvider = Provider<LocalAuthService>((ref) {
  return LocalAuthService(ref.watch(localAuthenticationProvider));
});

class LocalAuthService {
  const LocalAuthService(this._localAuthentication);

  final LocalAuthentication _localAuthentication;

  Future<bool> canAuthenticate() async {
    try {
      final canCheckBiometrics = await _localAuthentication.canCheckBiometrics;
      final isDeviceSupported = await _localAuthentication.isDeviceSupported();
      return canCheckBiometrics || isDeviceSupported;
    } on PlatformException {
      return false;
    }
  }

  Future<bool> authenticate() async {
    try {
      return await _localAuthentication.authenticate(
        localizedReason: 'Confirme sua identidade para entrar no app.',
        options: const AuthenticationOptions(
          biometricOnly: false,
          stickyAuth: true,
        ),
      );
    } on PlatformException {
      return false;
    }
  }
}
