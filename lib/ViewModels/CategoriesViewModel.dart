import 'package:flutter/material.dart';
import 'package:pluralize/pluralize.dart';
import 'package:vgmills/models/Breed.dart';

class CategoriesViewModel with ChangeNotifier {
  final categoryModel = Categories();

  List breeds = [];
  List ages = [];
  List genders = [];

  Map<String, List> categories = {
    "breeds": [],
    "ages": [],
    "genders": []
  };


  Future getCategories(String category) async {
    final pluralize = Pluralize();
    try {
      if(categories[pluralize.plural(category.toLowerCase())]!.isNotEmpty) return;
      categories[pluralize.plural(category.toLowerCase())] = (await categoryModel.loadCategoriesFromServer(pluralize.plural(category.toLowerCase())));
    } catch(e, stackTrace) {
      print(e);
    }
    notifyListeners();
  }

}