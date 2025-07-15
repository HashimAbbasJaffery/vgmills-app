import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:vgmills/ViewModels/AnimalViewModel.dart';
import 'package:vgmills/widgets/Animal.dart';

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
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ListView.builder(
          controller: _scrollController,
          itemCount: viewModel.animals.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Animal(viewModel.animals[index]),
                SizedBox(height: 20),
              ],
            );
          },
        ),
      );
    }
  }
}
