import 'package:dio/dio.dart';
import 'package:task_news_app/features/home/data/models/all_news_response_model.dart';

import '../../../../core/networking/api_end_points.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiEndPoints.baseUrl)
abstract class HomeApiService {
  
    factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

@GET(ApiEndPoints.allNews)
  Future<AllNewsResponseModel> getAllNews({@Query("apiKey") String apiKey='bb3cd198fd96432cad3d9b18df23e4a0', @Query("country") String country='us'});

}