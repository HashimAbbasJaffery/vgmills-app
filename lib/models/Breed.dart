import 'dart:convert';

import 'package:http/http.dart';

class Categories {
  Future loadCategoriesFromServer(String category) async {
    final uri = Uri.parse("https://vgmills.farm/cattle/" + category);
    final response = await get(uri);

    if(response.statusCode != 200 ) {
      throw (response);
    }
    return jsonDecode(response.body);
  }
}