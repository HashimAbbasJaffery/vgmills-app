import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vgmills/constants/Colors.dart';
import 'package:vgmills/widgets/Logo.dart';
import 'package:vgmills/widgets/SearchArea.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30)
        ),
        color: primary
      ),
      child: Column(
        children: [
          Logo(),
          SearchArea()
        ],
      ),
    );
  }
}