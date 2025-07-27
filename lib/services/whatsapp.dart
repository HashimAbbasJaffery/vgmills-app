import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

class Whatsapp {
  void open(String contact) async {
    // String androidUrl = "whatsapp://send?phone=$contact";
    String androidUrl = "https://google.com";
    String iosUrl = "https://wa.me/$contact";

    String webUrl = 'https://api.whatsapp.com/send/?phone=$contact';

    try {
      if (Platform.isIOS) {
        if (await canLaunchUrl(Uri.parse(iosUrl))) {
          await launchUrl(Uri.parse(iosUrl), mode: LaunchMode.externalApplication);
        }
      } else {
        if (await canLaunchUrl(Uri.parse(androidUrl))) {
          await launchUrl(Uri.parse(androidUrl), mode: LaunchMode.externalApplication);
        }
      }
    } catch(e) {
      print('object');
      await launchUrl(Uri.parse(webUrl), mode: LaunchMode.externalApplication);
    }
  }
}