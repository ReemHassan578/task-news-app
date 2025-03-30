import 'package:task_news_app/core/networking/api_error_handler.dart';
import 'package:task_news_app/features/home/data/api_service/home_api_service.dart';
import 'package:task_news_app/features/home/data/models/all_news_response_model.dart';
import 'package:task_news_app/features/home/domain/entities/article_entity.dart';

import '../../../../core/networking/api_result.dart';

class HomeRepo {
  final HomeApiService fetchAllNewsService;

  const HomeRepo(this.fetchAllNewsService);

  Future<ApiResult<List<ArticleEntity>>> fetchAllNews() async {
    try {
      AllNewsResponseModel allNewsAppResponse =
          await fetchAllNewsService.getAllNews();

      List<ArticleEntity> articleEntities =
          allNewsAppResponse.mapToArticleEntities();
      return ApiResult.success(articleEntities);
    } catch (error) {
    return  ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
