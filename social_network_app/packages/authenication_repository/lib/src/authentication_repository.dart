import 'dart:async';

enum AuthenicationStatus { unknow, authenicated, unauthenicated }

class AuthenicationRepository {
  final StreamController<AuthenicationStatus> _streamController =
      StreamController<AuthenicationStatus>();

  Stream<AuthenicationStatus> get status async* {
    Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenicationStatus.unauthenicated;
    yield* _streamController.stream;
  }
}
