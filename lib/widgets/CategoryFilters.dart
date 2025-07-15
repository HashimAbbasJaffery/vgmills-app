import 'package:flutter/material.dart';
import 'package:vgmills/widgets/CategoryFilter.dart';

class CategoryFilters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          CategoryFilter(category: "Breed"),
          // CategoryFilter(category: "Age"),
          // CategoryFilter(category: "Gender")
        ],
      ),
    );
  }
}