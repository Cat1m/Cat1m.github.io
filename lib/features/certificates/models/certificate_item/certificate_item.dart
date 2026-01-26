import 'package:freezed_annotation/freezed_annotation.dart';

part 'certificate_item.freezed.dart';
part 'certificate_item.g.dart';

@freezed
abstract class CertificateItem with _$CertificateItem {
  const factory CertificateItem({
    required String id,
    required String name, // Tên chứng chỉ (e.g. Google Cloud Associate)
    required String issuer, // Tổ chức cấp (e.g. Google, Coursera)
    String? logoUrl, // Logo tổ chức (Optional)
    required DateTime date, // Ngày cấp
    String? credentialUrl, // Link xác thực
    String? credentialId, // ID chứng chỉ (Optional)
    @Default([]) List<String> skills, // Kỹ năng liên quan
  }) = _CertificateItem;

  factory CertificateItem.fromJson(Map<String, dynamic> json) =>
      _$CertificateItemFromJson(json);
}
