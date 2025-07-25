import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:vgmills/constants/Colors.dart';

class BottomSheetUI extends StatefulWidget {

  final Map<dynamic, dynamic> animal;
  final bool is_delivery;

  BottomSheetUI({ required this.animal, this.is_delivery = false });

  @override
  State<BottomSheetUI> createState() => _BottomSheetUIState();
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

  final double taxPercentage;
  final int eidYear;
  final int months;

  const eids({ required this.taxPercentage, required this.eidYear, required this.months });
}

class _BottomSheetUIState extends State<BottomSheetUI> {
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
    final currency = NumberFormat.currency(locale: 'en_PK', symbol: 'PKR ');


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
            Text("Cash:"),
            Text(currency.format(widget.animal["price"]) + "/-")
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.is_delivery == true ? "Delivery Charges:" : "Maintenance Fee Per Month:"),
            Text(currency.format(widget.animal["maintenance_fee"]) + "/-")
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
            if(widget.is_delivery == false)
              Text(
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  "PKR " + currency.format((eids.values.where((eid) => eid.eidYear == selectedEid).first.months * widget.animal["maintenance_fee"] + widget.animal["price"])) + "/-"
              )
            else
              Text(
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  "PKR " + currency.format((30000 + widget.animal["price"])) + "/-"
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