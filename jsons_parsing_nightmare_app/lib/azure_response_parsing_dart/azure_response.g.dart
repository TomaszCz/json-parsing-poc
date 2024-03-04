// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azure_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AzureResponse _$AzureResponseFromJson(Map<String, dynamic> json) =>
    AzureResponse(
      id: json['id'] as String?,
      model: json['model'] as String?,
      created: json['created'] as int?,
      object: json['object'] as String?,
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => Choice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: json['usage'] == null
          ? null
          : Usage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AzureResponseToJson(AzureResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'model': instance.model,
      'created': instance.created,
      'object': instance.object,
      'choices': instance.choices,
      'usage': instance.usage,
    };
