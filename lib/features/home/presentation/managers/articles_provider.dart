import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/repo/home_repo.dart';
import '../../domain/entities/article_entity.dart';

import '../../../../core/di/dependency_injection.dart';

class ArticlesNotifier extends StateNotifier<AsyncValue<List<ArticleEntity>>> {
  final HomeRepo homeRepo;

  ArticlesNotifier({required this.homeRepo}) : super(const AsyncValue.loading());

  void fetchArticles() async {
    ApiResult<List<ArticleEntity>> apiResult =
        await homeRepo.fetchNews();
    apiResult.whenOrNull(
      success: (articles) => state = AsyncValue.data(articles),
      failure: (error) {
        state = AsyncValue.error( error.message, StackTrace.current);
      },
    );
  }

  void searchForArticles(String searchTerm) async {
        if (searchTerm.isEmpty)  return;

    ApiResult<List<ArticleEntity>> apiResult =
        await homeRepo.fetchNews(searchTerm: searchTerm);
    apiResult.whenOrNull(
      success: (articles) => state = AsyncValue.data(articles),
      failure: (error) {
        state = AsyncValue.error( error.message, StackTrace.current);
      },
    );
  }
}

final articlesProvider =
    StateNotifierProvider<ArticlesNotifier, AsyncValue<List<ArticleEntity>>>(
  (ref) {
    return ArticlesNotifier(homeRepo: getIt<HomeRepo>());
  },
);
