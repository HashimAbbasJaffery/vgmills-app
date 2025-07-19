import 'package:flutter/widgets.dart';

class Disclaimers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "DISCLAIMERS",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            style: TextStyle(
              fontSize: 10
            ),
            'VG Farm animals are raised in optimal conditions, receiving premium VG feed for their nutritional needs.'
          ),
        )
      ],
    );
  }
}