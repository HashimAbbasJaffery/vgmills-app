import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimalInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.fromLTRB(15, 30, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Justin bieber",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "PKR 1,000,000/-",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Row(
                        spacing: 20,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "420kg live weight",
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                          Icon(
                            size: 20,
                            FontAwesomeIcons.weightHanging
                          )
                        ],
                      )
                    ],
                  ),
                );
  }
}