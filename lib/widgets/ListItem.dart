import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vgmills/ViewModels/DrawerData.dart';

class ListItem extends StatelessWidget {
  String item;
  ListItem({ required this.item });

  @override
  Widget build(BuildContext context) {
  final provider = Provider.of<DrawerData>(context);
    return GestureDetector(
      onTap: () => {
        if(provider.is_category_drawer_open == "Breed") {
          provider.setBreed(item)
        } else if(provider.is_category_drawer_open == "Age") {
          provider.setAge(item)
        } else {
          provider.setGender(item)
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(item),
      ),
    );
  }
}