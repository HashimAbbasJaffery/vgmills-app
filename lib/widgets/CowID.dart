import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vgmills/constants/Colors.dart';

class CowID extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                ),
                color: cow_id_color,
              
              ),
              padding: EdgeInsets.symmetric(vertical: 5),
              width: double.infinity,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                  "ID: 123-123-123",
                ),
              ),
            );
  }
}