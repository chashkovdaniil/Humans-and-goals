// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'man_edit_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManEditPageStateImpl _$$ManEditPageStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ManEditPageStateImpl(
      initialModel: json['initialModel'] == null
          ? null
          : ManModel.fromJson(json['initialModel'] as Map<String, dynamic>),
      fullname: json['fullname'] as String,
      description: json['description'] as String,
      goals: (json['goals'] as List<dynamic>)
          .map((e) => GoalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ManEditPageStateImplToJson(
        _$ManEditPageStateImpl instance) =>
    <String, dynamic>{
      'initialModel': instance.initialModel,
      'fullname': instance.fullname,
      'description': instance.description,
      'goals': instance.goals,
    };
