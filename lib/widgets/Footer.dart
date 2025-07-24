import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vgmills/constants/Colors.dart';
import 'package:vgmills/widgets/BottomSheetUI.dart';

class Footer extends StatelessWidget {

  Map<dynamic, dynamic> animal;

  Footer({ required this.animal });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFf9f4ec),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          spacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 10,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: cow_id_color,
                    ),
                    onPressed: () => {

                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext build) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                              child: SizedBox(
                                child: BottomSheetUI(animal: animal),
                              )
                            );
                          }
                      )
                    },
                    child: Text(
                      style: TextStyle(
                        color: Colors.white
                      ),
                      'Cash'
                    )
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: cow_id_color,
                    ),
                    onPressed: () => {}, 
                    child: Text(
                      style: TextStyle(
                        color: Colors.white
                      ),
                      'Installment'
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: cow_id_color,
                ),
                onPressed: () => {}, 
                child: Text(
                  style: TextStyle(
                    color: Colors.white
                  ),
                  'Whatsapp'
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}