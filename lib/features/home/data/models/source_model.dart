
import 'package:json_annotation/json_annotation.dart';
part 'source_model.g.dart';

@JsonSerializable()
class SourceModel {
 final String? id;
 final String name;

const  SourceModel({required this.id, required this.name});
    factory SourceModel.fromJson(Map<String, dynamic> json) =>
      _$SourceModelFromJson(json);
}
