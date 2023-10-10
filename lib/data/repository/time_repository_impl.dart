import 'package:test_task_weather/core/arch/data/remote/base/map_common_server_error.dart';
import 'package:test_task_weather/core/arch/domain/entity/common/result.dart';
import 'package:test_task_weather/core/arch/domain/entity/failure/api_failure.dart';
import 'package:test_task_weather/core/di/app.dart';
import 'package:test_task_weather/core/extension/logger_extension.dart';
import 'package:test_task_weather/data/mapper/time/time/time_mapper.dart';
import 'package:test_task_weather/data/source/remote/time/time_source.dart';
import 'package:test_task_weather/domain/entity/time/time/time.dart';
import 'package:test_task_weather/domain/repository/time_repository.dart';

//{entities_imports}
//{mappers_imports}

class TimeRepositoryImpl extends TimeRepository {
  final TimeSource _timeSource;

  final _timeMappers = TimeMappers();

  //{mappers}

  TimeRepositoryImpl(
    this._timeSource,
  );

  @override
  Future<Result<Time>> getTime() async {
    try {
      final response = await _timeSource.getTime();
      if (response.isSuccess()) {
        final entities = _timeMappers.mapResponseToEntity(response.data);
        return Result.success(entities);
      } else {
        final failure = MapCommonServerError.getServerFailureDetails(response);
        return Result.error(failure: failure);
      }
    } catch (e, trace) {
      logger.crash(reason: 'getTime_API_ERR', error: e, stackTrace: trace);
      //TODO make repository failure
      return Result.error(
        failure: ApiFailure(
          ServerFailure.exception,
          message: e.toString(),
        ),
      );
    }
  }
}
