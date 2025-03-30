import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_news_app/core/networking/api_result.dart';
import 'package:task_news_app/features/home/data/repo/home_repo.dart';
import 'package:task_news_app/features/home/domain/entities/article_entity.dart';

import '../../../../core/di/dependency_injection.dart';

class ArticlesNotifier extends StateNotifier<List<ArticleEntity>?> {
  final HomeRepo fetchAllNewsRepo;

  ArticlesNotifier({required this.fetchAllNewsRepo}) : super([]);

  void fetchArticles() async {
    ApiResult<List<ArticleEntity>> apiResult =
        await fetchAllNewsRepo.fetchAllNews();
    apiResult.whenOrNull(success: (articles) => state = articles.toList()
    ,failure: (error) => state=null,);
  }
}

final articlesProvider =
    StateNotifierProvider<ArticlesNotifier, List<ArticleEntity>?>(
  (ref) {
    return ArticlesNotifier(fetchAllNewsRepo: getIt<HomeRepo>());
  },
);
