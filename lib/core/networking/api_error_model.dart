import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? status;
  final String? code;
  final String message;

const  ApiErrorModel({ this.status,  this.code, required this.message});

factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

      String getErrorMessage() => message;

}
