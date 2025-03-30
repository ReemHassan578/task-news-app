import 'package:dio/dio.dart';
import '../models/all_news_response_model.dart';

import '../../../../core/networking/api_end_points.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiEndPoints.baseUrl)
abstract class HomeApiService {
  
    factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

@GET(ApiEndPoints.allNews)
  Future<AllNewsResponseModel> getNews(@Query("apiKey") String apiKey, {@Query("q") String? searchTerm});


}