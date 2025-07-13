import 'package:flutter/foundation.dart';
import 'package:vgmills/models/Animal.dart';

class Animalviewmodel with ChangeNotifier {
  final Animal animalModel = Animal();
  List animals = [];
  String? errorMessage;

  Future init() async {
    try {   
      animals = (await animalModel.loadAnimalFromSever());
    } catch(e) {
      print(e);
    }
    notifyListeners();
  }


}