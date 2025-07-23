import 'package:flutter/widgets.dart';
import 'package:vgmills/widgets/AnimalInformation.dart';
import 'package:vgmills/widgets/InstallmentBadge.dart';

class Cowbasicinfo extends StatelessWidget {

  Map<dynamic, dynamic> animal;
  Cowbasicinfo({ required this.animal });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnimalInformation(animal: animal),
        InstallmentBadge()
      ],
    );
  }
}