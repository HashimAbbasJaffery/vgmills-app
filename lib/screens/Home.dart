import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:vgmills/ViewModels/AnimalViewModel.dart';
import 'package:vgmills/ViewModels/CategoriesViewModel.dart';
import 'package:vgmills/ViewModels/DrawerData.dart';
import 'package:vgmills/widgets/Animal.dart';
import 'package:vgmills/widgets/Animals.dart';
import 'package:vgmills/widgets/Header..dart';
import 'package:vgmills/widgets/SearchDrawer.dart';

class Home extends StatelessWidget {
  Function(String) changeKeyword;
  Home(this.changeKeyword);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Animalviewmodel()),
          ChangeNotifierProvider(create: (_) => DrawerData()),
          ChangeNotifierProvider(create: (_) => CategoriesViewModel())
        ],
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                Header(changeKeyword),
                Expanded(child: Animals()),
  
              ],
            ),

            Positioned(
              right: 20,
              top: 100,
              child: Container(
                width: 300, // or desired width
                child: SearchDrawer(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}