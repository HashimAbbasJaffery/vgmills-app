import 'dart:convert';

import 'package:http/http.dart';

class Animal {
  String endpoint = "https://vgmills.farm/cattle/api/animals?";
  Future loadAnimalFromSever({
    String keyword = "",
    String min = "",
    String max = "",
    String breed = "",
    String age = "",
    String gender = "" 
  }) async {
    if(keyword.isNotEmpty) {
      endpoint += "&keyword=" + keyword;
    } 
    if(min.isNotEmpty && max.isNotEmpty) {
      endpoint += "&from=" + min.toString() + "&to=" + max.toString();
    }
    if(breed.isNotEmpty) {
      endpoint += "&breed=" + breed;
    }
    if(age.isNotEmpty) {
      endpoint += "&age=" + age;
    }
    if(gender.isNotEmpty) {
      endpoint += "&gender=" + gender;
    }
    print(endpoint);
    final uri = Uri.parse(endpoint);
    final response = await get(uri);

    if(response.statusCode != 200 ) {
      throw ("Failed");
    }
    endpoint = "https://vgmills.farm/cattle/api/animals?";
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