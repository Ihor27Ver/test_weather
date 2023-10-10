import 'package:test_task_weather/core/arch/domain/common/converter/mapper.dart';
import 'package:test_task_weather/data/model/remote/authentication/authentication_response.dart';
import 'package:test_task_weather/domain/entity/authentication/authentication.dart';

class _ResponseToEntity
    implements Mapper<AuthenticationResponse, Authentication> {
  @override
  Authentication map(AuthenticationResponse from) {
    return Authentication(
      accessToken: from.accessToken ?? '',
      refreshToken: from.refreshToken ?? '',
    );
  }
}

class _RefreshEntity implements Mapper<AuthenticationResponse, Authentication> {
  @override
  Authentication map(AuthenticationResponse from) {
    return Authentication(
      accessToken: from.accessToken ?? '',
      refreshToken: from.refreshToken ?? '',
    );
  }
}

class AuthenticationMappers {
  final _responseToEntity = _ResponseToEntity();
  final _refreshEntity = _RefreshEntity();

  Authentication mapResponseToEntity(AuthenticationResponse from) =>
      _responseToEntity.map(from);

  Authentication mapRefreshEntity(AuthenticationResponse from) =>
      _refreshEntity.map(from);
}
