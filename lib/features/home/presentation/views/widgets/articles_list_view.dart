import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../managers/articles_provider.dart';
import 'article_item.dart';

class ArticlesListView extends ConsumerWidget {
  const ArticlesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var articles = ref.watch(articlesProvider);
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => ArticleItem(article: articles.value![index],),
        itemCount: articles.value?.length,
      ),
    );
  }
}
