import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vgmills/constants/Colors.dart';
import 'package:vgmills/widgets/Logo.dart';
import 'package:vgmills/widgets/SearchArea.dart';
import 'package:vgmills/widgets/SearchDrawer.dart';

class Header extends StatefulWidget {

  Function(String) changeKeyword;
  Header(this.changeKeyword);  

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool is_drawer_open = false;

  void toggleDrawer() {
    setState(() {
      is_drawer_open = !is_drawer_open;
    });
  }

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
          Stack(
            clipBehavior: Clip.none,
            children: [
              SearchArea(toggleDrawer),
              Container(
                child: Positioned(
                  right: 80,
                  top: 10,
                  child: is_drawer_open ? SearchDrawer() : Text("")
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}