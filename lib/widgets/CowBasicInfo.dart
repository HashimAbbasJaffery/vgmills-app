import 'package:flutter/widgets.dart';
import 'package:vgmills/widgets/AnimalInformation.dart';
import 'package:vgmills/widgets/InstallmentBadge.dart';

class Cowbasicinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnimalInformation(),
        InstallmentBadge()
      ],
    );
  }
}