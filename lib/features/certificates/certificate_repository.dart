import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/certificates/models/certificate_item/certificate_item.dart';

abstract class ICertificateRepository {
  Future<List<CertificateItem>> getCertificates();
}

@LazySingleton(as: ICertificateRepository)
class CertificateRepository implements ICertificateRepository {
  @override
  Future<List<CertificateItem>> getCertificates() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return [
      CertificateItem(
        id: '1',
        name: 'Professional Cloud Architect',
        issuer: 'Google Cloud',
        logoUrl: 'assets/svg/linkedin_log.svg',
        date: DateTime(2023, 8),
        credentialUrl: 'https://google.com/certification/...',
        credentialId: 'GCC-123456',
        skills: ['Cloud Architecture', 'DevOps', 'Security'],
      ),
      CertificateItem(
        id: '2',
        name: 'Flutter Development Bootcamp',
        issuer: 'Udemy',
        logoUrl: 'assets/svg/Udemy_logo.svg',
        date: DateTime(2022, 5),
        credentialUrl: 'https://udemy.com/certificate/...',
        skills: ['Flutter', 'Dart', 'State Management'],
      ),
      // Thêm các chứng chỉ khác...
    ];
  }
}
