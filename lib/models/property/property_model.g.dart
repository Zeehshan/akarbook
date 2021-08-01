// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyModel _$PropertyModelFromJson(Map<String, dynamic> json) {
  return PropertyModel(
    propertyCity: json['property_city'] as String?,
    propertyState: json['property_state'] as String?,
    propertyStatus: json['property_status'] as String?,
    propertyType: json['property_type'] as String?,
    gallery:
        (json['gallery'] as List<dynamic>?)?.map((e) => e as String).toList(),
    propertyId: json['property_id'] as int?,
    title: json['title'] as String?,
    attachmentUrl: json['attachment_url'] is List<dynamic>
        ? json['attachment_url'][0] as String?
        : json['attachment_url'] as String?,
    price: json['price'] as String?,
    agent: json['agent'] as String?,
  );
}

Map<String, dynamic> _$PropertyModelToJson(PropertyModel instance) =>
    <String, dynamic>{
      'property_city': instance.propertyCity,
      'property_state': instance.propertyState,
      'property_status': instance.propertyStatus,
      'property_type': instance.propertyType,
      'gallery': instance.gallery,
      'property_id': instance.propertyId,
      'title': instance.title,
      'attachment_url': instance.attachmentUrl,
      'price': instance.price,
      'agent': instance.agent,
    };
