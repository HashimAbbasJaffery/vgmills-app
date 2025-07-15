import 'package:flutter/material.dart';

class FilterHeader extends StatelessWidget {
  String heading;
  FilterHeader({ required this.heading });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFe5e5e5)
          )
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          style: TextStyle(
            color: Color(0xFFababab)
          ),
          heading
        ),
      ),
    );
  }
}