import 'package:flutter/material.dart';

import 'package:first_flutter_app/src/pages/altert_page.dart';
import 'package:first_flutter_app/src/pages/avatar_page.dart';
import 'package:first_flutter_app/src/pages/cards_page.dart';
import 'package:first_flutter_app/src/pages/home_page.dart';
import 'package:first_flutter_app/src/pages/list_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'list_page': (BuildContext context) => ListPage(),
    'alert_page': (BuildContext context) => AlertPage(),
    'avatar_page': (BuildContext context) => AvatarPage(),
    'cards_page': (BuildContext context) => CardsPage(),
  };
}