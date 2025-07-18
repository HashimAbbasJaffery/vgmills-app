import 'package:flutter/material.dart';

class DrawerData with ChangeNotifier {
  String is_category_drawer_open = "";
  bool is_filters_open = false;

  String keyword = "";
  String breed = "";
  String age = "";
  String gender = "";
  String min = "";
  String max = "";

  void resetFilters() {
    keyword = "";
    breed = "";
    age = "";
    gender = "";
    min = "";
    max = "";
    notifyListeners();
  }

  void toggleFilters() {
    is_filters_open = !is_filters_open;
    notifyListeners();
  }

  void toggle(type) {
    if(is_category_drawer_open == type) {
      is_category_drawer_open = "";
    } else {
      is_category_drawer_open = type;
    }
    notifyListeners();
  }

  void setBreed(String breed_val) {
    breed = breed_val;
    is_category_drawer_open = "";
    notifyListeners();
  }

  
  void setAge(String age_val) {
    age = age_val;
    is_category_drawer_open = "";
    notifyListeners();
  }

  
  void setGender(String gender_val) {
    gender = gender_val;
    is_category_drawer_open = "";
    notifyListeners();
  }

  void setMin(value) {
    min = value;
    notifyListeners();
  }

  void setMax(value) {
    max = value;
    notifyListeners();
  }

  void setKeyword(value) {
    keyword = value;
    notifyListeners();
  }

  void hideDrawer() {
    is_filters_open = !is_filters_open;
    notifyListeners();
  }
}