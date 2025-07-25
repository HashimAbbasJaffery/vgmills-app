import 'package:url_launcher/url_launcher.dart';

class Whatsapp {
  void open(String whatsappNumber) async {
    final url = Uri.parse("https://wa.me/$whatsappNumber");


    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url, mode: LaunchMode.externalApplication);
      } else {
        print("❌ WhatsApp cannot be launched. URL is not supported: $url");
        throw "Could not launch WhatsApp";
      }
    } catch (e, stackTrace) {
      print("❌ Exception occurred while launching WhatsApp:");
      print("Error: $e");
      print("Stack Trace: $stackTrace");
    }
  }
}