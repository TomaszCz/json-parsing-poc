// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      index: json['index'] as int?,
      role: json['role'] as String?,
      content: json['content'],
      endTurn: json['end_turn'] as bool?,
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'index': instance.index,
      'role': instance.role,
      'content': instance.content,
      'end_turn': instance.endTurn,
    };
