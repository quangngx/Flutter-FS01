import 'dart:async';

enum AuthenticationStatus { unknow, authenicated, unauthenicated }

class AuthenticationRepository {
  final StreamController<AuthenticationStatus> _streamController =
      StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenicated;
    yield* _streamController.stream;
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    await Future.delayed(Duration(milliseconds: 300),
        (() => _streamController.add(AuthenticationStatus.authenicated)));
  }

  void logOut() {
    _streamController.add(AuthenticationStatus.unauthenicated);
  }

  void dispose() => _streamController.close();
}
