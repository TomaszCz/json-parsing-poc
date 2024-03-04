import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'content.dart';

part 'message.g.dart';

@JsonSerializable()
class Message extends Equatable {
  final int? index;
  final String? role;
  final dynamic content;
  @JsonKey(name: 'end_turn')
  final bool? endTurn;

  const Message({this.index, this.role, this.content, this.endTurn});

  factory Message.fromJson(Map<String, dynamic> json) {
    final dynamic content = json['content'];
// this try catch was not generated, you need to manually wrap it -> if there are any other dynamic fields, this code throws
    try {
      final Map<String, dynamic> contentMap = jsonDecode(content);

      return Message(
        index: json['index'] as int?,
        role: json['role'] as String?,
        content: contentMap,
        endTurn: json['end_turn'] as bool?,
      );
    } catch (e) {
      return Message(
        index: json['index'] as int?,
        role: json['role'] as String?,
        content: content as String?,
        endTurn: json['end_turn'] as bool?,
      );
    }
  }

  Map<String, dynamic> toJson() => _$MessageToJson(this);

  Message copyWith({
    int? index,
    String? role,
    Content? content,
    bool? endTurn,
  }) {
    return Message(
      index: index ?? this.index,
      role: role ?? this.role,
      content: content ?? this.content,
      endTurn: endTurn ?? this.endTurn,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [index, role, content, endTurn];
}
