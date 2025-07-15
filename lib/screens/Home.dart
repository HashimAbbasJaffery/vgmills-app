import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:vgmills/ViewModels/AnimalViewModel.dart';
import 'package:vgmills/widgets/Animal.dart';
import 'package:vgmills/widgets/Animals.dart';
import 'package:vgmills/widgets/Header..dart';

class Home extends StatelessWidget {
  Function(String) changeKeyword;
  Home(this.changeKeyword);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ChangeNotifierProvider(
              create: (context) => Animalviewmodel(),
              child: Column(
                children: [
                  Header(changeKeyword),
                  // Expanded(child: Animals()),
                ],
              )
            )
          )
        ],
      )
    );
  }
}