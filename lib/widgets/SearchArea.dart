import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:vgmills/ViewModels/AnimalViewModel.dart';
import 'package:vgmills/ViewModels/DrawerData.dart';
import 'package:vgmills/utils/Debouncer.dart';

class SearchArea extends StatelessWidget {
  var _inputController = TextEditingController();

  Function() toggleDrawer;
  SearchArea(this.toggleDrawer);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DrawerData>(context);
    var viewModel = Provider.of<Animalviewmodel>(context);
    final _debouncer = Debouncer(milliseconds: 300);

    return Padding(
      
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 25),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10000)
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  onChanged: (value) => {
                    _debouncer.run(() => {
                      viewModel.search(keyword: value),
                      provider.setKeyword(value)
                    })
                  },
                  controller: _inputController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18
                    ),
                    hintText: "Search",
                    icon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: -10)
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {
                provider.toggleFilters()
              },
              child: Container(
                height: 47,
                decoration: BoxDecoration(
                  border: BoxBorder.fromLTRB(
                    left: BorderSide(
                      width: 1.5,
                      color: Colors.black
                    )
                  )
                ),
                padding: const EdgeInsets.fromLTRB(15, 0, 20, 0),
                child: Icon(
                  Icons.tune
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}