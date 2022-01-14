import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;


class MenuProvider {

  List<dynamic> options = [];

  Future<List<dynamic>> loadData() async {
    final response = await rootBundle.loadString('assets/data/menu_options.json');
    Map dataMap = json.decode(response);
    options = dataMap['routes'];

    return options;
  }
}

final menuProvider = MenuProvider();