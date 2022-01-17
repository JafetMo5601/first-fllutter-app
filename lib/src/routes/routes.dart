import 'package:first_flutter_app/src/pages/auth/authentication_page.dart';
import 'package:flutter/material.dart';

import 'package:first_flutter_app/src/pages/altert_page.dart';
import 'package:first_flutter_app/src/pages/avatar_page.dart';
import 'package:first_flutter_app/src/pages/cards_page.dart';
import 'package:first_flutter_app/src/pages/home_page.dart';
import 'package:first_flutter_app/src/pages/list_page.dart';
import 'package:first_flutter_app/src/pages/auth/login_page.dart';
import 'package:first_flutter_app/src/pages/auth/forgot_password.dart';
import 'package:first_flutter_app/src/pages/auth/register_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'list_page': (BuildContext context) => ListPage(),
    'alert_page': (BuildContext context) => AlertPage(),
    'avatar_page': (BuildContext context) => AvatarPage(),
    'cards_page': (BuildContext context) => CardsPage(),
    'login_page': (BuildContext context) => LoginPage(),
    'register_page': (BuildContext context) => RegisterPage(),
    'forgot_password_page': (BuildContext context) => ForgotPasswordPage(),
    'auth_page': (BuildContext context) => AuthPage(),
  };
}