// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'man.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ManImpl _$$ManImplFromJson(Map<String, dynamic> json) => _$ManImpl(
      id: json['id'] as String,
      fullname: json['fullname'] as String,
      description: json['description'] as String,
      goals: (json['goals'] as List<dynamic>)
          .map((e) => Goal.fromJson(e as Map<String, dynamic>))
          .toList(),
      link: json['link'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$ManImplToJson(_$ManImpl instance) => <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'description': instance.description,
      'goals': instance.goals,
      'link': instance.link,
      'phone': instance.phone,
    };
