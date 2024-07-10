import 'package:freezed_annotation/freezed_annotation.dart';

part 'man_model.freezed.dart';
part 'man_model.g.dart';

@freezed
class ManModel with _$ManModel {
  const factory ManModel({
    required String id,
  }) = _ManModel;

  factory ManModel.fromJson(Map<String, dynamic> json) =>
      _$ManModelFromJson(json);
}
