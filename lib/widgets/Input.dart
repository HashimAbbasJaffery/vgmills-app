import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:vgmills/ViewModels/DrawerData.dart';

class Input extends StatelessWidget {
  String placeholder;

  Input({ required this.placeholder });

  @override
  Widget build(BuildContext context) {
  final provider = Provider.of<DrawerData>(context);
    return  Expanded(
      child: Container(
        height: 22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2.5)),
          border: Border.all(
            color: Color(0xFFb3b3b3)
          )
        ),
        child: TextField(
          onChanged:  (value) => {
            if(placeholder == "min") {
              provider.setMin(value)
            } else {
              provider.setMax(value)
            }
          },
          cursorHeight: 15,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Color(0xFF949494)
            ),
            hintText: placeholder
          ),
        ),
      ),
    );
  }
}