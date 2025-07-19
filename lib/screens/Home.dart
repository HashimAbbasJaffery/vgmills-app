import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:provider/provider.dart';
import 'package:vgmills/ViewModels/AnimalViewModel.dart';
import 'package:vgmills/ViewModels/CategoriesViewModel.dart';
import 'package:vgmills/ViewModels/DrawerData.dart';
import 'package:vgmills/widgets/Animal.dart';
import 'package:vgmills/widgets/Animals.dart';
import 'package:vgmills/widgets/Header..dart';
import 'package:vgmills/widgets/SearchDrawer.dart';

class Home extends StatefulWidget {
  Function(String) changeKeyword;
  Home(this.changeKeyword);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

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
                Header(widget.changeKeyword),
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