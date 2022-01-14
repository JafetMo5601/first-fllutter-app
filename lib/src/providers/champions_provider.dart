import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class ChampionsProvider {
  List<dynamic> champions = [];

  Future<List<dynamic>> loadChampions() async {
    final response = await rootBundle.loadString('assets/data/champions.json');
    Map championsMap = json.decode(response);
    champions = championsMap['champions'];

    return champions;

  }
}

final championsProvider = ChampionsProvider();