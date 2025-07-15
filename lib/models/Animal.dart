import 'dart:convert';

import 'package:http/http.dart';

class Animal {
  Future loadAnimalFromSever({String keyword = ""}) async {
    final uri = Uri.parse("https://vgmills.farm/cattle/api/animals?keyword=" + keyword);
    final response = await get(uri);

    if(response.statusCode != 200 ) {
      throw ("Failed");
    }
    return [jsonDecode(response.body)["data"], jsonDecode(response.body)["next_page_url"]];
  }
  
  Future loadAnimalFromUrl({String url = ""}) async {
    final uri = Uri.parse(url);
    final response = await get(uri);

    if(response.statusCode != 200 ) {
      throw ("Failed");
    }
    return [jsonDecode(response.body)["data"], jsonDecode(response.body)["next_page_url"]];
  }
}