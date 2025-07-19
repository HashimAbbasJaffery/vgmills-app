import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vgmills/constants/Colors.dart';

class InstallmentBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 5, 5, 5),
      decoration: BoxDecoration(
        color: cow_id_color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          bottomLeft: Radius.circular(5)
        )
      ),
      child: Text(
        style: TextStyle(
          color: Colors.white,
          fontSize: 12
        ),
        "Installment Plans\n are also available"
      ),
    );
  }
}