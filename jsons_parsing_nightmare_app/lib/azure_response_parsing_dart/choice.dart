import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'message.dart';

part 'choice.g.dart';

@JsonSerializable()
class Choice extends Equatable {
  final int? index;
  final List<Message>? messages;

  const Choice({this.index, this.messages});

  factory Choice.fromJson(Map<String, dynamic> json) {
    return _$ChoiceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChoiceToJson(this);

  Choice copyWith({
    int? index,
    List<Message>? messages,
  }) {
    return Choice(
      index: index ?? this.index,
      messages: messages ?? this.messages,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [index, messages];
}
