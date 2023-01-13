// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'certification_model.dart';
//
// // **************************************************************************
// // JsonSerializableGenerator
// // **************************************************************************
//
// _$_CertificationModel _$$_CertificationModelFromJson(
//         Map<String, dynamic> json) =>
//     _$_CertificationModel(
//       idCertification: json['idCertification'] as int,
//       cert: (json['cert'] as List<dynamic>)
//           .map((e) =>
//               CertificationDetailsModel.fromJson(e as Map<String, dynamic>))
//           .toList(),
//       ref: json['ref'] as String,
//       isActive: json['isActive'] as bool? ?? true,
//     );
//
// Map<String, dynamic> _$$_CertificationModelToJson(
//         _$_CertificationModel instance) =>
//     <String, dynamic>{
//       'idCertification': instance.idCertification,
//       'cert': instance.cert.map((e) => e.toJson()).toList(),
//       'ref': instance.ref,
//       'isActive': instance.isActive,
//     };
