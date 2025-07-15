import 'package:flutter/foundation.dart';
import 'package:vgmills/models/Animal.dart';

class Animalviewmodel with ChangeNotifier {
  final Animal animalModel = Animal();
  List animals = [];
  String? next_page_url = "";
  String? errorMessage;
  bool loading = false;

  Future init() async {
    loading = true;
    notifyListeners();

    try {   
      var data = await animalModel.loadAnimalFromSever();
      animals = data[0];
      next_page_url = data[1]; 
    } catch(e) {
      print(e);
    }
    notifyListeners();

    loading = false;
    notifyListeners();
  }

  Future next() async {
    try {
      if(next_page_url != null) {
        var data = await animalModel.loadAnimalFromUrl(url: next_page_url.toString());
        animals = [...animals, ...data[0]];
        next_page_url = data[1];
      }
    } catch(e) {
      print(e);
    }

    notifyListeners();
  }

  Future search(keyword) async {
    loading = true;
    notifyListeners();

    try {
      var data = await animalModel.loadAnimalFromSever(keyword: keyword);
      animals = data[0];
      next_page_url = data[1];
    } catch(e) {
      print(e);
    } 
    notifyListeners();

    loading = false;
    notifyListeners();
  }


}