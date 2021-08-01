
///flutter packages pub run build_runner build --delete-conflicting-outputs
///flutter packages pub run build_runner build

import 'package:json_annotation/json_annotation.dart';
part 'property_model.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class PropertyModel {
  final String? propertyCity;
  final String? propertyState;
  final String? propertyStatus;
  final String? propertyType;
  final List<String>? gallery;
  final int? propertyId;
  final String? title;
  final String? attachmentUrl;
  final String? price;
  final String? agent;

  PropertyModel(
      {this.propertyCity,
      this.propertyState,
      this.propertyStatus,
      this.propertyType,
      this.gallery,
      this.propertyId,
      this.title,
      this.attachmentUrl,
      this.price,
      this.agent});

   factory PropertyModel.fromJson(json) => _$PropertyModelFromJson(json);
}
