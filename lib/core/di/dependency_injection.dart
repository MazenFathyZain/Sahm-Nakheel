import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sahm_nakheel/core/networking/api_service.dart';
import 'package:sahm_nakheel/features/home/data/repository/landing_repo.dart';
import 'package:sahm_nakheel/features/home/logic/cubit/landing_cubit.dart';
import 'package:sahm_nakheel/features/login/data/repos/login_reop.dart';
import 'package:sahm_nakheel/features/login/logic/cubit/login_cubit.dart';
import 'package:sahm_nakheel/features/signup/data/repo/sign_up_repo.dart';
import 'package:sahm_nakheel/features/signup/logic/sign_up_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<LandingCubit>(() => LandingCubit(getIt()));
  getIt.registerLazySingleton<LandingRepo>(() => LandingRepo(getIt()));
  getIt.registerLazySingleton<ApiService>(() => ApiService(createAndSetupDio()));
  // getIt.registerLazySingleton<Case>(() => Case(getIt()));
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
// signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

}
  Dio createAndSetupDio() {
    Dio dio = Dio();
    dio
      ..options.connectTimeout = const Duration(milliseconds: 1 * 10000)
      ..options.receiveTimeout = const Duration(milliseconds: 10 * 10000);
    dio.interceptors.add(LogInterceptor(
        requestBody: true,
        error: true,
        requestHeader: false,
        responseHeader: false,
        request: true,
        responseBody: true));
    return dio;
  }
