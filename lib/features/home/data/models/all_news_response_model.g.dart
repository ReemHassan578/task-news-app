// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_news_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllNewsResponseModel _$AllNewsResponseModelFromJson(
        Map<String, dynamic> json) =>
    AllNewsResponseModel(
      status: json['status'] as String,
      totalResults: (json['totalResults'] as num).toInt(),
      articles: (json['articles'] as List<dynamic>)
          .map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllNewsResponseModelToJson(
        AllNewsResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
