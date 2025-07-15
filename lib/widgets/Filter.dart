import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vgmills/constants/Colors.dart';
import 'package:vgmills/widgets/CategoryFilters.dart';
import 'package:vgmills/widgets/FilterButton.dart';
import 'package:vgmills/widgets/FiltersHeader.dart';
import 'package:vgmills/widgets/Input.dart';
import 'package:vgmills/widgets/PriceFilter.dart';

class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilterHeader(heading: "Filter"),
        PriceFilter(),
        CategoryFilters(),
        IndexedStack(
          children: [
            FilterButton()
          ],
        )
      ],
    );
  }
}