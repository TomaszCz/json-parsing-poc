import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'content.g.dart';

@JsonSerializable()
class Content extends Equatable {
  final List<dynamic>? citations;
  final String? intent;

  const Content({this.citations, this.intent});

  factory Content.fromJson(Map<String, dynamic> json) {
    return _$ContentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ContentToJson(this);

  Content copyWith({
    List<dynamic>? citations,
    String? intent,
  }) {
    return Content(
      citations: citations ?? this.citations,
      intent: intent ?? this.intent,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [citations, intent];
}
