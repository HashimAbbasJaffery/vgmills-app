import 'package:flutter/material.dart';
import 'package:vgmills/widgets/Input.dart';

class PriceFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold
                ),
                "Price"
              ),
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(0xFFd9d9d9)
              )
            )
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Input(placeholder: "min"),
                Text("-"),
                Input(placeholder: "max")
              ],
            ),
          ),
        ),
      ],
    );
  }
}