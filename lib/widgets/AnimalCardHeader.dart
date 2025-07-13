import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class AnimalCardHeader extends StatelessWidget {
  final name;
  final price;
  final weight;

  AnimalCardHeader({ required this.name, required this.price, required this.weight });
  final currency = NumberFormat.currency(locale: 'en_PK', symbol: 'PKR ');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),
          ),
          Text(
            currency.format(price),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),
          ),
          Text(
            weight.toString() + " KG (Live Weight)",
            style: TextStyle(
              fontSize: 16
            ),
          )
        ],
      ),
    );
  }
}