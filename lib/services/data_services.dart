import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/services.dart' show rootBundle;

class DataServices {
  String _baseUrl = 'http://10.0.2.2:8000/api';

  // get http => null;

  Future<List<dynamic>> getUsers() async {
    var apiUrl = '/payment';

    http.Response res = await http.get(Uri.parse(_baseUrl + apiUrl));

    try {
      if (res.statusCode == 200) {
        List<dynamic> list = await json.decode(res.body);
        print(list);
        return list.map((e) => e).toList();
      } else {
        print("Something went wrong");
        return [];
      }
    } catch (e) {
      print(e);
      print("Api request failed");
      return [];
    }

    // var info = rootBundle.loadString("json/data.json");
    // List<dynamic> list = json.decode(await info);
    // // print(list);
    // return Future.delayed(
    //     Duration(seconds: 1), () => list.map((e) => e).toList());
  }
}
