import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:sahm_nakheel/core/networking/api_constants.dart';
import 'package:sahm_nakheel/features/home/data/model/landing.dart';
import 'package:sahm_nakheel/features/login/data/models/login_request_body.dart';
import 'package:sahm_nakheel/features/login/data/models/login_response.dart';
import 'package:sahm_nakheel/features/signup/data/models/sign_up_request_body.dart';

import '../../features/signup/data/models/sign_up_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.landing)
  Future<List<Landing>> getLandaingData();

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
  
  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(@Body() SignupRequestBody signupRequestBody);
}
