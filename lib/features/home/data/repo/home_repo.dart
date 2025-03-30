import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../api_service/home_api_service.dart';
import '../models/all_news_response_model.dart';
import '../../domain/entities/article_entity.dart';

import '../../../../core/networking/api_result.dart';

class HomeRepo {
  final HomeApiService fetchAllNewsService;

  const HomeRepo(this.fetchAllNewsService);

  Future<ApiResult<List<ArticleEntity>>> fetchNews({String? searchTerm}) async {
    try {
      AllNewsResponseModel allNewsAppResponse =
          await fetchAllNewsService.getNews("${dotenv.env['API_KEY']}",searchTerm: searchTerm??"bitcoin");

      List<ArticleEntity> articleEntities =
          allNewsAppResponse.mapToArticleEntities();
      return ApiResult.success(articleEntities);
    } catch (error) {
    return  ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
