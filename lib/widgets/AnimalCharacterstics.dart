import 'package:flutter/widgets.dart';

class Animalcharacterstics extends StatelessWidget {

  final String character_key;
  final String character_value;
  Animalcharacterstics({ required this.character_key, required this.character_value });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          character_key,
          style: TextStyle(
            fontSize: 11
          ),
        ),
        Text(
          character_value,
          style: TextStyle(
            fontSize: 11
          )
        )
      ],
    );
  }
}