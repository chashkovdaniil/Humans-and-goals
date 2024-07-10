// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'man_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManModelImpl _$$ManModelImplFromJson(Map<String, dynamic> json) =>
    _$ManModelImpl(
      id: json['id'] as String,
      fullname: json['fullname'] as String,
      description: json['description'] as String,
      goals: (json['goals'] as List<dynamic>)
          .map((e) => GoalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ManModelImplToJson(_$ManModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'description': instance.description,
      'goals': instance.goals,
    };
