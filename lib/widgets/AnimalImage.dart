import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vgmills/constants/Colors.dart';

class AnimalImage extends StatelessWidget {
  final Map animal;

  AnimalImage(this.animal);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Image.network(
            loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loading) {
                if(loading == null) {
                  return child;
                } else {
                  return Container(
                      width: 140,
                      height: 100,
                      child: CircularProgressIndicator(
                        padding: EdgeInsets.all(50),
                      )
                  );
                }
            },
            width: 140,
            "https://vgmills.farm/cattle/storage/" + animal["front_image"]
          ),
          Container(
            width: 140,
            height: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10)
              ),
              color: cow_id_color
            ),
            alignment: Alignment.center,
            child: Text(
              "ID: " + animal["cow_id"].toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 9
              ),
            ),
          )
        ],
      );
  }
}