import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:vgmills/constants/Colors.dart';

class Installmentsheet extends StatefulWidget {

  final Map<dynamic, dynamic> animal;

  Installmentsheet({ required this.animal });

  @override
  State<Installmentsheet> createState() => _InstallmentsheetState();
}

enum eids {
  in2026(
      taxPercentage: 2.8,
      eidYear: 2026,
      months: 24
  ),
  in2027(
      taxPercentage: 4.2,
      eidYear: 2027,
      months: 36
  );

  double get percentage {
    return this.taxPercentage * this.months;
  }


  final double taxPercentage;
  final int eidYear;
  final int months;

  const eids({ required this.taxPercentage, required this.eidYear, required this.months });
}

class _InstallmentsheetState extends State<Installmentsheet> {
  final currency = NumberFormat.currency(locale: 'en_PK', symbol: 'PKR ');

  int selectedEid = eids.in2026.eidYear;
  late int overallMaintenance;

  void initState() {
    super.initState();
    setState(() {
      overallMaintenance = eids.in2026.months *  widget.animal["maintenance_fee"] as int;
    });
  }

  @override
  Widget build(BuildContext context) {
    eids eidInstance = eids.values.where((eid) => eid.eidYear == selectedEid).first;
    double taxedPrice = (eidInstance.percentage / 100) * widget.animal["price"];
    double installment =  ((widget.animal["price"] + taxedPrice) / eidInstance.months) + widget.animal["maintenance_fee"];

    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Requirements for Eid-ul-Adha",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
            SizedBox(height: 10,),

            Row(
              spacing: 10,
              children: [
                Text("Eid-ul-Azha:"),
                DropdownButton<String>(
                  style: TextStyle(
                      color: Colors.black
                  ),
                  value: selectedEid.toString(),
                  items: eids.values.map((eid) => DropdownMenuItem<String>(
                      value: eid.eidYear.toString(),
                      child: Text(eid.eidYear.toString()))
                  ).toList(),
                  onChanged: (String? val)   {
                    setState(() {
                      if(val != null){
                        selectedEid = int.parse(val);
                      }
                    });
                  },
                ),
              ],
            ),

            SizedBox(height: 10,),

            Text(
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
                "Animal Details"
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Status:"),
                Text("Available")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Name:"),
                Text(widget.animal["name"])
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Live Weight:"),
                Text(widget.animal["live_weight"].toString() + " KG")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Breed:"),
                Text(widget.animal["breed"]["breed"])
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Gender:"),
                Text(widget.animal["gender"] == 0 ? "Male" : "Female")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Age:"),
                Text(widget.animal["age"]["age"])
              ],
            ),

            SizedBox(height: 20,),
            Text(
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
                "Pricing"
            ),
            SizedBox(height: 20,),




            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Installment:"),
                Text(currency.format(installment.round()) + "/-")
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Maintenance Fee Per Month:"),
                Text(currency.format(widget.animal["maintenance_fee"]) + "/-")
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Duration:"),
                Text(eidInstance.months.toString() + " Months")
              ],
            ),

            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                    "Total:"
                ),
                  Text(
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                      currency.format((installment * eidInstance.months).round()) + "/-"
                  )
              ],
            ),

            SizedBox(height: 10,),


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
                      "Whatsapp"
                  )
              ),
            )



          ],
        )
      ],
    );

  }
}