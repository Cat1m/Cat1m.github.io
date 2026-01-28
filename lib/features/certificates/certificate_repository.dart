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
        name: 'Flutter - Animations from Zero to Hero',
        issuer: 'Udemy',
        logoUrl: 'assets/images/udemy.png',
        date: DateTime(2025, 1),
        credentialUrl: 'https://ude.my/UC-fa303930-2061-4b16-9513-d09d992b3b9a',
        credentialId: 'UC-fa303930-2061-4b16-9513-d09d992b3b9a',
        skills: ['Animations', 'Flutter'],
      ),
      CertificateItem(
        id: '5',
        name: 'Flutter Advanced Course - Clean Architecture With MVVM',
        issuer: 'Udemy',
        logoUrl: 'assets/images/udemy.png',
        date: DateTime(2025, 1),
        credentialUrl: 'https://ude.my/UC-58522ff8-9d7a-4531-b1b8-eebb6b818e6d',
        credentialId: 'UC-58522ff8-9d7a-4531-b1b8-eebb6b818e6d',
        skills: ['MVVM', 'Flutter', 'Clean Architecture'],
      ),
      CertificateItem(
        id: '6',
        name: 'Flutter REST Movie App: Master Flutter REST API Development',
        issuer: 'Udemy',
        logoUrl: 'assets/images/udemy.png',
        date: DateTime(2025, 1),
        credentialUrl: 'https://ude.my/UC-1925f9e4-ec3d-4c0b-881f-b9c5d066c2af',
        credentialId: 'UC-1925f9e4-ec3d-4c0b-881f-b9c5d066c2af',
        skills: ['REST API', 'Flutter'],
      ),
      CertificateItem(
        id: '7',
        name: 'Flutter UI Bootcamp | Build Beautiful Apps using Flutter',
        issuer: 'Udemy',
        logoUrl: 'assets/images/udemy.png',
        date: DateTime(2025, 1),
        credentialUrl: 'https://ude.my/UC-b356d972-2885-48a6-a893-d551db2bff9b',
        credentialId: 'UC-b356d972-2885-48a6-a893-d551db2bff9b',
        skills: ['MVVM', 'Flutter', 'Clean Architecture'],
      ),
      CertificateItem(
        id: '2',
        name: 'Flutter: Build, Test, Deploy Mobile Apps for iOS and Android',
        issuer: 'Udemy',
        logoUrl: 'assets/images/udemy.png',
        date: DateTime(2025, 1),
        credentialUrl: 'https://ude.my/UC-62b4c329-7e11-4362-b8d8-f4d8e53e8866',
        credentialId: 'UC-62b4c329-7e11-4362-b8d8-f4d8e53e8866',
        skills: ['Flutter', 'Test', 'Deploy'],
      ),
      CertificateItem(
        id: '3',
        name: 'Learning Go',
        issuer: 'LinkedIn Learning Community',
        logoUrl: 'assets/images/linkedin.png',
        date: DateTime(2025, 4),
        credentialUrl:
            'https://www.linkedin.com/learning/certificates/9a9e9d784d7e4198e44139408698a56894af6b4b552bacd0e569894abfc2beaa?trk=share_certificate',
        credentialId:
            '9a9e9d784d7e4198e44139408698a56894af6b4b552bacd0e569894abfc2beaa',
        skills: ['Go'],
      ),
      CertificateItem(
        id: '4',
        name: 'Learning Linux Command Line',
        issuer: 'LinkedIn Learning Community',
        logoUrl: 'assets/images/linkedin.png',
        date: DateTime(2025, 4),
        credentialUrl:
            'https://www.linkedin.com/learning/certificates/595c60f3ddec545442a5340795a182e77d854dc4ead7c66b80988a560b360046?trk=share_certificate',
        credentialId:
            '595c60f3ddec545442a5340795a182e77d854dc4ead7c66b80988a560b360046',
        skills: ['Linux Command Line'],
      ),
      // Thêm các chứng chỉ khác...
    ];
  }
}
