import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/entities/article_entity.dart';
import '../../managers/articles_provider.dart';
import 'articles_list_view.dart';

class FetchArticlesStatusWidget extends ConsumerWidget {
  const FetchArticlesStatusWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<ArticleEntity>> articles = ref.watch(articlesProvider);

    return articles.when(
      data: (data) => const ArticlesListView(),
      loading: () =>
          const Expanded(child: Center(child: CircularProgressIndicator())),
      error: (error, stackTrace) => const Expanded(child: SizedBox.shrink()),
    );
  }
}
