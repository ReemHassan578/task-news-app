import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/article_entity.dart';
import 'article_model.dart';
part 'all_news_response_model.g.dart';

@JsonSerializable()
class AllNewsResponseModel {
  final String status;
  final int totalResults;
  final List<ArticleModel> articles;

const  AllNewsResponseModel(
      {required this.status,
      required this.totalResults,
      required this.articles}
      );


      factory AllNewsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AllNewsResponseModelFromJson(json);


      List<ArticleEntity> mapToArticleEntities(){

         var articleEntities = articles
        .map(
          (article) => ArticleEntity(description: article.description??'no description',  title: article.title?? "no title" , urlToImage: article.urlToImage??'https://fastly.picsum.photos/id/813/200/300.jpg?hmac=D5xik3d3YUFq2gWtCzrQZs6zuAcmSvgqdZb063ezs4U')
     
        )
        .toList();
    return articleEntities;
        }
}
