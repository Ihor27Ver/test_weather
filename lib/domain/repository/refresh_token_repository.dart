import 'package:test_task_weather/core/arch/domain/entity/common/result.dart';
import 'package:test_task_weather/domain/entity/authentication/authentication.dart';

abstract class RefreshTokenRepository {
  Future<Result<Authentication>> refresh(String refreshToken);
}
