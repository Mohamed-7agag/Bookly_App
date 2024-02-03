import 'package:bookly_app/Features/home/data/repos/home_repo_implement.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo_implement.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
//! get_it package used to make dependancy injection and singleton pattern
//! Don not make cubit in get_it

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImplement>(
    HomeRepoImplement(
      getIt.get<ApiServices>(),
    ),
  );
  getIt.registerSingleton<SearchRepoImplement>(
    SearchRepoImplement(
       apiServices: getIt.get<ApiServices>(),
    ),
  );
}
