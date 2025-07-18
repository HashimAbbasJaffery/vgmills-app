import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:vgmills/ViewModels/DrawerData.dart';
import 'package:vgmills/widgets/CategoryList.dart';
import 'package:vgmills/widgets/Utils/ShowIf.dart';

class CategoryFilter extends StatelessWidget {

  final String category;
  
  CategoryFilter({ required this.category });

  @override
  Widget build(BuildContext context) {
  final drawerProvider = Provider.of<DrawerData>(context);
  
    return Stack(
      clipBehavior: Clip.none,
      children: [
          drawerProvider.is_category_drawer_open == category ? Categorylist() : SizedBox.shrink(),
          GestureDetector(
            onTap: () => {
              drawerProvider.toggle(category),
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(category),
                  Icon(Icons.arrow_right)
                ],
              ),
            ),
          ),
      ]
    );
  }
}