import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vgmills/widgets/Filter.dart';
import 'package:vgmills/widgets/Input.dart';

class SearchDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF7f7f7f)
            ),
            color: Colors.white,
          ),
          child: Filter()
        )
      ],
    );
  }
}