import 'package:advancecourse/core/networking/api_factory.dart';
import 'package:advancecourse/core/networking/api_service.dart';
import 'package:advancecourse/features/login/data/repos/login_repo.dart';
import 'package:advancecourse/features/login/logic_cubit/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final gitIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();
  gitIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  gitIt.registerLazySingleton<LoginRepo>(() => LoginRepo(gitIt()));
  gitIt.registerFactory<LoginCubit>(() => LoginCubit(gitIt()));
}
