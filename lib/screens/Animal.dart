import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vgmills/constants/Colors.dart';
import 'package:vgmills/widgets/AnimalCharacterstics.dart';
import 'package:vgmills/widgets/AnimalInformation.dart';
import 'package:vgmills/widgets/CoverImages.dart';
import 'package:vgmills/widgets/CowBasicInfo.dart';
import 'package:vgmills/widgets/CowID.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vgmills/widgets/Disclaimers.dart';
import 'package:vgmills/widgets/InstallmentBadge.dart';

class Animal extends StatefulWidget {
  @override
  State<Animal> createState() => _AnimalState();
}

class _AnimalState extends State<Animal> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFe9e4db),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CoverImages(),
            CowID(),
            Expanded(
              child: ListView(
                children: [
                  Cowbasicinfo(),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 20
                        ),
                        padding: EdgeInsets.fromLTRB(20, 20, 25, 0),
                        width: MediaQuery.of(context).size.width * 0.55,
                        color: Color(0xFFf9f4ec),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 7,
                          children: [
                            Animalcharacterstics(character_key: "Breed", character_value: "Brahmand"),
                            Animalcharacterstics(character_key: "Gender", character_value: "Female"),
                            Animalcharacterstics(character_key: "Age", character_value: "3 Teeth"),
                            Disclaimers()
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
