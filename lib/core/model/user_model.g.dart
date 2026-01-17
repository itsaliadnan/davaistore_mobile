// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  id: (json['id'] as num).toInt(),
  email: json['email'] as String,
  username: json['username'] as String,
  password: json['password'] as String,
  name: Name.fromJson(json['name'] as Map<String, dynamic>),
  address: Address.fromJson(json['address'] as Map<String, dynamic>),
  phone: json['phone'] as String,
  v: (json['v'] as num).toInt(),
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'username': instance.username,
  'password': instance.password,
  'name': instance.name,
  'address': instance.address,
  'phone': instance.phone,
  'v': instance.v,
};
