import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pluralize/pluralize.dart';
import 'package:provider/provider.dart';
import 'package:vgmills/ViewModels/CategoriesViewModel.dart';
import 'package:vgmills/ViewModels/DrawerData.dart';
import 'package:vgmills/widgets/ListItem.dart';

class Categorylist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var pluralize = Pluralize();
    final provider = Provider.of<DrawerData>(context);
    final listProvider = Provider.of<CategoriesViewModel>(context);
    listProvider.getCategories(provider.is_category_drawer_open);
    List<dynamic>? categories = listProvider.categories[pluralize.plural(provider.is_category_drawer_open.toLowerCase())];
    
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Positioned(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF7f7f7f)
            ),
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width * 0.5,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(categories != null)
                  ...categories.map((category) => ListItem(item: category[provider.is_category_drawer_open.toLowerCase()]))
              ],
            ),
          ),
        )
      ),
    );
  }
}