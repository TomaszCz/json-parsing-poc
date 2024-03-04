import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'usage.g.dart';

@JsonSerializable()
class Usage extends Equatable {
  @JsonKey(name: 'prompt_tokens')
  final int? promptTokens;
  @JsonKey(name: 'completion_tokens')
  final int? completionTokens;
  @JsonKey(name: 'total_tokens')
  final int? totalTokens;

  const Usage({this.promptTokens, this.completionTokens, this.totalTokens});

  factory Usage.fromJson(Map<String, dynamic> json) => _$UsageFromJson(json);

  Map<String, dynamic> toJson() => _$UsageToJson(this);

  Usage copyWith({
    int? promptTokens,
    int? completionTokens,
    int? totalTokens,
  }) {
    return Usage(
      promptTokens: promptTokens ?? this.promptTokens,
      completionTokens: completionTokens ?? this.completionTokens,
      totalTokens: totalTokens ?? this.totalTokens,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      promptTokens,
      completionTokens,
      totalTokens,
    ];
  }
}
