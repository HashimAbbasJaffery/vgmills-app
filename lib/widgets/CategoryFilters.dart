import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vgmills/ViewModels/CategoriesViewModel.dart';
import 'package:vgmills/ViewModels/DrawerData.dart';
import 'package:vgmills/widgets/CategoryFilter.dart';

class CategoryFilters extends StatefulWidget {
  
  @override
  State<CategoryFilters> createState() => _CategoryFiltersState();
}

class _CategoryFiltersState extends State<CategoryFilters> {


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DrawerData>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          CategoryFilter(category: "Breed", label: provider.breed),
          provider.is_category_drawer_open.isEmpty || provider.is_category_drawer_open == "Age" || provider.is_category_drawer_open == "Gender" ? CategoryFilter(category: "Age", label: provider.age,) : SizedBox.shrink(),
          provider.is_category_drawer_open.isEmpty || provider.is_category_drawer_open == "Gender" ? CategoryFilter(category: "Gender", label: provider.gender,) : SizedBox.shrink()
        ],
      ),
    );
  }
}