import 'package:flutter/material.dart';

class AnimalExtraInfo extends StatelessWidget {

  final String breed;
  final int gender;
  final String age;

  AnimalExtraInfo({ required this.breed, required this.gender, required this.age });


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                breed,
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(width: 7), // spacing
              
              // Wrap VerticalDivider in a container with height
              Container(
                height: 14, // or match Text size
                child: VerticalDivider(
                  width: 1,
                  thickness: 1,
                  color: Color(0xFFcccac5),
                ),
              ),

              SizedBox(width: 7),
              
              Text(
                (gender == 0) ? "Male" : "Female",
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(width: 7),

                            // Wrap VerticalDivider in a container with height
              Container(
                height: 14, // or match Text size
                child: VerticalDivider(
                  width: 1,
                  thickness: 1,
                  color: Color(0xFFcccac5),
                ),
              ),
              
              SizedBox(width: 7),
              Text(
                age,
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    size: 15,
                    Icons.calendar_month
                  ),
                  Text(
                    style: TextStyle(
                      fontSize: 9
                    ),
                    "Installment plans also available"
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
