import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vgmills/constants/Colors.dart';

class Footer extends StatelessWidget {
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
                    onPressed: () => {}, 
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