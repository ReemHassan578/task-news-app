
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:task_news_app/features/home/data/api_service/home_api_service.dart';
import 'package:task_news_app/features/home/data/repo/home_repo.dart';

import '../../features/home/presentation/managers/articles_provider.dart';
import '../networking/dio_helper.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  final Dio dio = DioHelper.getDio();
  getIt.registerLazySingleton<HomeApiService>(
    () => HomeApiService(dio),
  );
  
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepo(getIt<HomeApiService>()
    )  );

 getIt.registerLazySingleton<ArticlesNotifier>(
    () => ArticlesNotifier(
      fetchAllNewsRepo: getIt<HomeRepo>(),),
  );
  
}