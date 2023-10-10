import 'package:test_task_weather/core/arch/domain/entity/common/result.dart';
import 'package:test_task_weather/domain/entity/time/time/time.dart';

//{entities_imports}

abstract class TimeRepository {
  Future<Result<Time>> getTime();
}
