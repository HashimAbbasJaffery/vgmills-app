import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vgmills/widgets/AnimalCharacterstics.dart';
import 'package:vgmills/widgets/Disclaimers.dart';

class AdditionalInfo extends StatelessWidget {

  Map<dynamic, dynamic> animal;
  AdditionalInfo({ required this.animal });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 20
          ),
          padding: EdgeInsets.fromLTRB(20, 20, 25, 0),
          width: MediaQuery.of(context).size.width * 0.55,
          color: Color(0xFFf9f4ec),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 7,
            children: [
              Animalcharacterstics(character_key: "Breed", character_value: animal["breed"]["breed"]),
              Animalcharacterstics(character_key: "Gender", character_value: animal["gender"] == 0 ? "Male" : "Female"),
              Animalcharacterstics(character_key: "Age", character_value: animal["age"]["age"]),
              Disclaimers()
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.45,
          margin: EdgeInsets.only(
            top: 20
          ),
          color: Color(0xFFf2ede5),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 20, 12, 11),
            child: Column(  
              spacing: 6,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15                  
                  ),
                  child: Text(
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),
                    "VG Cattle Farm offers:"
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      style: TextStyle(
                        fontSize: 11
                      ),
                      "Complete Vaccination"
                    ),
                    Icon(
                      size: 11,
                      FontAwesomeIcons.syringe
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      style: TextStyle(
                        fontSize: 11
                      ),
                      "Multi-Vitamins"
                    ),
                    Icon(
                      size: 11,
                      FontAwesomeIcons.virus
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      style: TextStyle(
                        fontSize: 11
                      ),
                      "24/7 Wet Available"
                    ),
                    Icon(
                      size: 11,
                      FontAwesomeIcons.ambulance
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      style: TextStyle(
                        fontSize: 11
                      ),
                      "Professional Staff"
                    ),
                    Icon(
                      size: 11,
                      FontAwesomeIcons.user
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      style: TextStyle(
                        fontSize: 11
                      ),
                      "Clean Water"
                    ),
                    Icon(
                      size: 11,
                      FontAwesomeIcons.droplet
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      style: TextStyle(
                        fontSize: 11
                      ),
                      "Premiem Feed"
                    ),
                    Icon(
                      size: 11,
                      FontAwesomeIcons.procedures
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}