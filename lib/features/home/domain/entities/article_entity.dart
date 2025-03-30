import 'package:task_news_app/features/home/data/models/all_news_response_model.dart';
import 'package:task_news_app/features/home/data/models/article_model.dart';

class ArticleEntity {
  final String title;
  final String description;
  final String urlToImage;
  final String publishedAt;

 const ArticleEntity(
      {
      required this.title,
      required this.description,
      required this.urlToImage,
      required this.publishedAt,
      });

      
}
