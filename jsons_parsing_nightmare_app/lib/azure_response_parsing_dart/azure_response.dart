import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'choice.dart';
import 'usage.dart';

part 'azure_response.g.dart';

@JsonSerializable()
class AzureResponse extends Equatable {
  final String? id;
  final String? model;
  final int? created;
  final String? object;
  final List<Choice>? choices;
  final Usage? usage;

  const AzureResponse({
    this.id,
    this.model,
    this.created,
    this.object,
    this.choices,
    this.usage,
  });

  factory AzureResponse.fromJson(Map<String, dynamic> json) {
    return _$AzureResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AzureResponseToJson(this);

  AzureResponse copyWith({
    String? id,
    String? model,
    int? created,
    String? object,
    List<Choice>? choices,
    Usage? usage,
  }) {
    return AzureResponse(
      id: id ?? this.id,
      model: model ?? this.model,
      created: created ?? this.created,
      object: object ?? this.object,
      choices: choices ?? this.choices,
      usage: usage ?? this.usage,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, model, created, object, choices, usage];
}
