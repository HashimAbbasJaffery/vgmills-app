import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vgmills/constants/Colors.dart';
import 'package:vgmills/widgets/AdditionalInfo.dart';
import 'package:vgmills/widgets/AnimalCharacterstics.dart';
import 'package:vgmills/widgets/AnimalInformation.dart';
import 'package:vgmills/widgets/CoverImages.dart';
import 'package:vgmills/widgets/CowBasicInfo.dart';
import 'package:vgmills/widgets/CowID.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vgmills/widgets/Disclaimers.dart';
import 'package:vgmills/widgets/Footer.dart';
import 'package:vgmills/widgets/InstallmentBadge.dart';

class AnimalScreen extends StatefulWidget {

  Map<dynamic, dynamic> animal;
  AnimalScreen({ required this.animal });

  @override
  State<AnimalScreen> createState() => _AnimalState();
}

class _AnimalState extends State<AnimalScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFe9e4db),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CoverImages(animal: widget.animal),
            CowID(id: widget.animal["id"]),
            Expanded(
              child: ListView(
                children: [
                  Cowbasicinfo(animal: widget.animal),
                  AdditionalInfo(animal: widget.animal),
                  Footer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
