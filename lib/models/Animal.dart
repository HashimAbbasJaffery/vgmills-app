import 'dart:convert';

import 'package:http/http.dart';

class Animal {
  Future loadAnimalFromSever() async {
    final uri = Uri.parse("https://vgmills.farm/cattle/api/animals");
    final response = await get(uri);

    if(response.statusCode != 200 ) {
      throw ("Failed");
    }
    return jsonDecode(response.body)["data"];
  }
}