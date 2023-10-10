import 'dart:async';

import 'package:test_task_weather/core/di/remote.dart';
import 'package:test_task_weather/core/di/repository.dart';
import 'package:test_task_weather/domain/entity/authentication/authentication.dart';
import 'package:test_task_weather/domain/service/session_service/session_status.dart';

class SessionService {
  final StreamController<SessionStatus> _sessionObserver =
      StreamController<SessionStatus>();

  SessionStatus _sessionStatus = SessionStatus.closed;

  Stream<SessionStatus> get sessionObserver => _sessionObserver.stream;

  SessionStatus get sessionStatus => _sessionStatus;

  Future<void> openSession(Authentication authEntity) async {
    await tokenRepository.update(authEntity);
    _sessionStatus = SessionStatus.open;
    _sessionObserver.add(_sessionStatus);
  }

  Future<void> closeSession() async {
    await tokenRepository.clear();
    _sessionStatus = SessionStatus.closed;
    _sessionObserver.add(_sessionStatus);
  }
}
