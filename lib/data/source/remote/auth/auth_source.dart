import 'package:test_task_weather/core/arch/domain/entity/common/data_response.dart';
import 'package:test_task_weather/data/model/remote/authentication/authentication_request.dart';
import 'package:test_task_weather/data/model/remote/customer_access_token/customer_token_response_data.dart';

abstract class AuthSource {
  Future<DataResponse<CustomerTokenResponseData>> login(
      AuthenticationRequest requestData);
}
