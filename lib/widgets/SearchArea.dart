import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 25),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10000)
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18
                    ),
                    hintText: "Search",
                    icon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: -10)
                  ),
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}