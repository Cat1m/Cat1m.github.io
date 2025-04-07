import 'package:url_launcher/url_launcher.dart';

class UrlService {
  static Future<void> launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw Exception('Could not launch $url');
    }
  }

  static Future<void> launchEmail(String email) async {
    final String emailUrl = 'mailto:$email';
    await launchUrl(emailUrl);
  }

  static Future<void> launchWebsite(String website) async {
    if (!website.startsWith('http://') && !website.startsWith('https://')) {
      await launchUrl('https://$website');
    } else {
      await launchUrl(website);
    }
  }
}
