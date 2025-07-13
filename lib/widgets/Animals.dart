import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:vgmills/ViewModels/AnimalViewModel.dart';
import 'package:vgmills/widgets/Animal.dart';

class Animals extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {

    final viewModel = Provider.of<Animalviewmodel>(context);
    viewModel.init();

    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: ListView.builder(
                  itemCount: viewModel.animals.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Animal(viewModel.animals[index]),
                        SizedBox(height: 20,)
                      ],
                    );
                  },
                )
        );
  }
}