// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ward _$WardFromJson(Map<String, dynamic> json) => Ward(
      code: json['code'] as String?,
      name: json['name'] as String?,
      nameEn: json['name_en'] as String?,
      fullName: json['full_name'] as String?,
      fullNameEn: json['full_name_en'] as String?,
      codeName: json['code_name'] as String?,
      districtCode: json['district_code'] as String?,
      administrativeUnitId: json['administrative_unit_id'] as int?,
    );

Map<String, dynamic> _$WardToJson(Ward instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'name_en': instance.nameEn,
      'full_name': instance.fullName,
      'full_name_en': instance.fullNameEn,
      'code_name': instance.codeName,
      'district_code': instance.districtCode,
      'administrative_unit_id': instance.administrativeUnitId,
    };
