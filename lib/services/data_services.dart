import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class DataServices {
  getUsers() async {
    var info = rootBundle.loadString("json/data.json");
    List<dynamic> list = json.decode(await info);
    // print(list);
    return Future.delayed(
        Duration(seconds: 1), () => list.map((e) => e).toList());
  }
}
