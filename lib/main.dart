import 'package:first_flutter_app/src/routes/routes.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final Color _primaryColor = Color(0xff7972e6);
  final Color _accentColor = Color(0xff8a02ae);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoL Cards',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Color(0xffdfe0ea),
        primarySwatch: Colors.grey,
      ),
      initialRoute: 'login_page',
      routes: getApplicationRoutes(),
    );
  }
}