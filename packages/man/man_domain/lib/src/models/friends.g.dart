// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friends.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FriendsImpl _$$FriendsImplFromJson(Map<String, dynamic> json) =>
    _$FriendsImpl(
      men: (json['men'] as List<dynamic>)
          .map((e) => Man.fromJson(e as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$FriendsImplToJson(_$FriendsImpl instance) =>
    <String, dynamic>{
      'men': instance.men.toList(),
    };
