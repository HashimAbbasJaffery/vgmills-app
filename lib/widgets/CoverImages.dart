import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:vgmills/constants/Colors.dart';

class CoverImages extends StatelessWidget {

  Map<dynamic, dynamic> animal;
  CoverImages({ required this.animal });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
              child: Stack(
                children: [
                     CarouselSlider(
                      options: CarouselOptions(
                        height: 300.0,
                        viewportFraction: 1.0, // Full width
                        enlargeCenterPage: false,
                      ),
                      items: [
                        "https://vgmills.farm/cattle/storage/" + animal["front_image"],
                        "https://vgmills.farm/cattle/storage/" + animal["back_image"],
                      ].map((url) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              child: Image.network(
                                url,
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                ],
              ),
            );
  }
}