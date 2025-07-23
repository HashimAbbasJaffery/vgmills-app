import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vgmills/models/Animal.dart';
import 'package:intl/intl.dart';

class AnimalInformation extends StatelessWidget {

  Map<dynamic, dynamic> animal;
  AnimalInformation({ required this.animal });
  final currency = NumberFormat.currency(locale: 'en_PK', symbol: 'PKR ');

  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.fromLTRB(15, 30, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        animal["name"],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        currency.format(animal["price"]),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Row(
                        spacing: 20,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            animal["live_weight"].toString() + "kg live weight",
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