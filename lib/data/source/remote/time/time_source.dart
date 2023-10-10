import 'package:test_task_weather/core/arch/domain/entity/common/data_response.dart';
import 'package:test_task_weather/data/model/remote/time/time/time_response.dart';

//{response_imports}
//{request_imports}

abstract class TimeSource {
  Future<DataResponse<TimeResponse>> getTime();
}
