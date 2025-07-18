import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:vgmills/ViewModels/DrawerData.dart';
import 'package:vgmills/constants/Colors.dart';
import 'package:vgmills/widgets/CategoryFilters.dart';
import 'package:vgmills/widgets/FilterButton.dart';
import 'package:vgmills/widgets/FiltersHeader.dart';
import 'package:vgmills/widgets/Input.dart';
import 'package:vgmills/widgets/PriceFilter.dart';

class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final provider = Provider.of<DrawerData>(context);
    return Column(
      children: [
        FilterHeader(heading: "Filter"),
        PriceFilter(),
        CategoryFilters(),
        provider.is_category_drawer_open == "" ? FilterButton() : SizedBox.shrink()
      ],
    );
  }
}