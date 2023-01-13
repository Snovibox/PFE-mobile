// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:pfe_mobile/data/model/certification_details/certification_details_model.dart';
//
// part 'certification_model.freezed.dart';
//
// part 'certification_model.g.dart';
//
// @freezed
// class CertificationModel with _$CertificationModel {
//   @JsonSerializable(explicitToJson: true)
//   const CertificationModel._();
//
//   @JsonSerializable(explicitToJson: true)
//   factory CertificationModel({
//     required int idCertification,
//     required List<CertificationDetailsModel> cert,
//     required String ref,
//     @Default(true) bool isActive,
//   }) = _CertificationModel;
//
//   @JsonSerializable(explicitToJson: true)
//   factory CertificationModel.fromJson(Map<String, dynamic> json) => _$CertificationModelFromJson(json);
//
// }