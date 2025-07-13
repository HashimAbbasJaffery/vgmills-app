import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vgmills/constants/Colors.dart';
import 'package:vgmills/widgets/AnimalCardHeader.dart';
import 'package:vgmills/widgets/AnimalExtraInfo.dart';

class AnimalInfo extends StatelessWidget {
  final Map animal;
  AnimalInfo(this.animal);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
        children: [
          AnimalCardHeader(
            name: animal["name"],
            price: animal["price"],
            weight: animal["live_weight"],
          ),
          AnimalExtraInfo(
            breed: animal["breed"]["breed"],
            age: animal["age"]["age"],
            gender: animal["gender"],
          ),
        ],
      );
  }
}