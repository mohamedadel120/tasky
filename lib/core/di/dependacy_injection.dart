import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tasky/core/networking/dio_factory.dart';
import 'package:tasky/featres/auth/data/api/auth_api_services.dart';
import 'package:tasky/featres/auth/data/repository/auth_repo.dart';
import 'package:tasky/featres/auth/logic/cubit/login_cubit.dart';

final sl = GetIt.instance;
Future<void> setupGetIt() async {
  //setup your dependencies here
  Dio dio = DioFactory.getDio();

  //this is the Auth API service
  sl.registerLazySingleton<AuthApiServices>(() => AuthApiServices(dio));

  sl.registerLazySingleton<AuthRepo>(() => AuthRepo(sl()));

  sl.registerFactory<AuthCubit>(() => AuthCubit(sl()));
}
