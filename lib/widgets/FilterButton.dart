import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:vgmills/ViewModels/AnimalViewModel.dart';
import 'package:vgmills/ViewModels/DrawerData.dart';
import 'package:vgmills/constants/Colors.dart';

class FilterButton extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DrawerData>(context);
    var viewModel = Provider.of<Animalviewmodel>(context);

    return Row(
      spacing: 0,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 15, 10),
          child: Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: 30,
              height: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0),
                  elevation: 0,
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                ),
                onPressed: () => {
                  provider.resetFilters(),
                  viewModel.init(),
                  provider.hideDrawer()
                }, 
                child: Icon(Icons.restore)
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 15, 10),
          child: Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: cow_id_color,
                  foregroundColor: Colors.white,
                ),
                onPressed: () => {
                  viewModel.search(
                    keyword: provider.keyword,
                    min: provider.min,
                    max: provider.max,
                    breed: provider.breed,
                    age: provider.age,
                    gender: provider.gender
                  ),
                  provider.hideDrawer()
                }, 
                child: Text("Filter")
              ),
            ),
          ),
        ),
      ],
    ); 
  }
}