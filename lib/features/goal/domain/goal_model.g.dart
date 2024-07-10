// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoalModelImpl _$$GoalModelImplFromJson(Map<String, dynamic> json) =>
    _$GoalModelImpl(
      id: json['id'] as String,
      men: (json['men'] as List<dynamic>)
          .map((e) => ManModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GoalModelImplToJson(_$GoalModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'men': instance.men,
    };
