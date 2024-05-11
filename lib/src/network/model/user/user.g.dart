// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MUserImpl _$$MUserImplFromJson(Map<String, dynamic> json) => _$MUserImpl(
      id: json['id'] as String,
      name: json['name'] as String? ?? AppConstants.defaultName,
      avatar: json['avatar'] as String? ?? AppConstants.defaultAvatar,
      email: json['email'] as String? ?? AppConstants.defaultEmail,
    );

Map<String, dynamic> _$$MUserImplToJson(_$MUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'email': instance.email,
    };
