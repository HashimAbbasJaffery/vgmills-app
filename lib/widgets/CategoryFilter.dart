import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryFilter extends StatelessWidget {
  String category;
  CategoryFilter({ required this.category });
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
            Positioned(
              right: -1,
              top: 30,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF7f7f7f)
                    ),
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text("Brahmand"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text("Sahiwal"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text("Cholistani"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text("Bhagnari"),
                        ),
                      ],
                    ),
                  ),
                )
              ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(category),
                Icon(Icons.arrow_right)
              ],
                    ),
          ),
      ]
    );
  }
}