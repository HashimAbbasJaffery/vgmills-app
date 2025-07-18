import 'package:flutter/widgets.dart';
import 'package:vgmills/constants/Colors.dart';

class Animalsskeletonloading extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: card_color,
        ),
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Text("")
          ],
        ),
      );
    }
  }