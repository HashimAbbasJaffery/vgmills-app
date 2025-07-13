import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:vgmills/ViewModels/AnimalViewModel.dart';
import 'package:vgmills/widgets/Animal.dart';
import 'package:vgmills/widgets/Animals.dart';
import 'package:vgmills/widgets/Header..dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Header(),
          Expanded(
            child: ChangeNotifierProvider(
              create: (context) => Animalviewmodel(),
              child: Animals(),
            )
          )
        ],
      )
    );
  }
}