import 'package:test_task_weather/core/arch/domain/entity/common/result.dart';
import 'package:test_task_weather/domain/entity/time/time/time.dart';
import 'package:test_task_weather/domain/repository/time_repository.dart';

class GetTimeUseCase {
  final TimeRepository _timeRepository;

  GetTimeUseCase(this._timeRepository);

  Future<Result<Time>> call() async {
    return _timeRepository.getTime();
  }
}
