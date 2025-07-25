import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vgmills/constants/Colors.dart';
import 'package:vgmills/services/whatsapp.dart';
import 'package:vgmills/widgets/BottomSheetUI.dart';
import 'package:vgmills/widgets/InstallmentSheet.dart';

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
                                height: MediaQuery.of(context).size.height * 0.5,
                                child: Column(
                                  children: [
                                    DefaultTabController(
                                        length: 2,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                bottom: 20
                                              ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xFFe8e7e6),
                                                    borderRadius: BorderRadius.all(Radius.circular(50))
                                                ),
                                                child: TabBar(
                                                    dividerHeight: 0,
                                                    indicatorSize: TabBarIndicatorSize.tab,
                                                    labelStyle: TextStyle(
                                                        color: Colors.white
                                                    ),
                                                    indicator: BoxDecoration(
                                                        borderRadius: BorderRadius.all(Radius.circular(50)),
                                                        color: cow_id_color
                                                    ),

                                                    tabs: [
                                                      Tab(text: "Boarding Service"),
                                                      Tab(text: "Delivery")
                                                    ]
                                                ),
                                              )
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context).size.height * 0.4,
                                              child: TabBarView(children: [
                                                BottomSheetUI(animal: animal),
                                                BottomSheetUI(animal: animal, is_delivery: true,)
                                              ]),
                                            )
                                          ],
                                        )
                                    ),
                                    // TabBarView(
                                    //     children:
                                    // )

                                  ],
                                )
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
                    onPressed: () => {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext build) {
                            return Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                                child: SizedBox(
                                    height: MediaQuery.of(context).size.height * 0.5,
                                    child: Column(
                                      children: [

                                        Expanded(
                                          child: Installmentsheet(animal: animal,),
                                        )

                                      ],
                                    )
                                )
                            );
                          }
                      )
                    },
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
                onPressed: () => {
                  Whatsapp().open("03323743375")
                },
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