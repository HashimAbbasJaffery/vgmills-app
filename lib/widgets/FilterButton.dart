import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vgmills/constants/Colors.dart';

class FilterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 15, 10),
      child: Align(
        alignment: Alignment.topRight,
        child: SizedBox(
          height: 30,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: cow_id_color,
              foregroundColor: Colors.white,
            ),
            onPressed: () => {}, 
            child: Text("Filter")
          ),
        ),
      ),
    ); 
  }
}