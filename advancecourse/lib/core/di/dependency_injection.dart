import 'package:advancecourse/core/networking/api_factory.dart';
import 'package:advancecourse/core/networking/api_service.dart';
import 'package:advancecourse/features/home/data/apis/home_apis_service.dart';
import 'package:advancecourse/features/home/data/repos/home_repo.dart';
import 'package:advancecourse/features/home/logic/cubit/home_cubit.a.dart';
import 'package:advancecourse/features/login/data/repos/login_repo.dart';
import 'package:advancecourse/features/login/logic_cubit/cubit/login_cubit.dart';
import 'package:advancecourse/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:advancecourse/features/sign_up/logic/cubit/cubit/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final gitIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();
  gitIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //! login
  gitIt.registerLazySingleton<LoginRepo>(() => LoginRepo(gitIt()));
  gitIt.registerFactory<LoginCubit>(() => LoginCubit(gitIt()));

  //! Sign Up
  gitIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(gitIt()));
  gitIt.registerFactory<SignUpCubit>(() => SignUpCubit(gitIt()));

  gitIt.registerLazySingleton<HomeApisService>(() => HomeApisService(dio));
  gitIt.registerLazySingleton<HomeRepo>(() => HomeRepo( gitIt()));
}
