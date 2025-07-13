import 'package:flutter/widgets.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 5,
        children: [
          Image.asset(
            width: 70,
            "lib/assets/images/logo.png",
          ),
          Text(
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),
            "VG MILLS & FARMS"
          )
        ],
      ),
    );
  }
}