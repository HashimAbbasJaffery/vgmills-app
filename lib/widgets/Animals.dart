import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:vgmills/ViewModels/AnimalViewModel.dart';
import 'package:vgmills/constants/Colors.dart';
import 'package:vgmills/screens/Animal.dart';
import 'package:vgmills/widgets/Animal.dart';
import 'package:vgmills/widgets/AnimalsSkeletonLoading.dart';

class Animals extends StatefulWidget {
  @override
  _AnimalsState createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {
  bool _isInitialized = false;
  final ScrollController _scrollController = ScrollController();

  void initState() {
    _scrollController.addListener(() => {
      if(_scrollController.position.pixels >= _scrollController.position.maxScrollExtent) {
        (Provider.of<Animalviewmodel>(context, listen: false)).next()
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_isInitialized) {
      final viewModel = Provider.of<Animalviewmodel>(context, listen: false);
      viewModel.init();
      _isInitialized = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<Animalviewmodel>(context);
    if(viewModel.loading) {
        return Padding(
      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Column(
        spacing: 20,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Animalsskeletonloading(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Animalsskeletonloading(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Animalsskeletonloading(),
          ),
        ],
      ),
    );
  
    } else {
      return Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: ListView.builder(
                controller: _scrollController,
                itemCount: viewModel.animals.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => AnimalScreen(animal: viewModel.animals[index])
                          ))
                        },
                        child: Animal(viewModel.animals[index]),
                      ),
                      SizedBox(height: 20),
                      if(index == viewModel.animals.length - 1 && viewModel.next_page_url != null) 
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: cow_id_color
                          ),
                          onPressed: () => {}, 
                          child: Text(
                            style: TextStyle(
                              color: Colors.white
                            ),
                            viewModel.is_loading_more ? "Loading" : "Load More"
                          )
                        )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      );
    }
  }
}
