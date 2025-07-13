  import 'package:flutter/material.dart';
  import 'package:flutter/widgets.dart';
  import 'package:vgmills/constants/Colors.dart';
import 'package:vgmills/widgets/AnimalImage.dart';
import 'package:vgmills/widgets/AnimalInfo.dart';

  class Animal extends StatelessWidget {

    final Map animal;
    Animal(this.animal);

    @override
    Widget build(BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: card_color,
        ),
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10)
              ),
              child: AnimalImage(animal),
            ),
            AnimalInfo(animal)
          ],
        ),
      );
    }
  }