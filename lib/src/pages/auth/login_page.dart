import 'package:first_flutter_app/src/utils/fields_generator.dart';
import 'package:first_flutter_app/src/utils/utils.dart';
import 'package:first_flutter_app/src/widget/header.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formLogin = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250.0,
              child: HeaderWidget(250.0, true, Icons.login_rounded),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: getContextPercentaje(context, 0.12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Signin into your account',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 30.0),
                  _createLoginForm()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createLoginForm() {
    return Form(
        key: _formLogin,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            EmailField(emailController: _emailController),
            SizedBox(height: 15),
            PasswordField(passwordController: _passwordController),
            SizedBox(height: 15),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getContextPercentaje(context, 0.20)),
                child: _generateSubmitButton(
                    form: _formLogin,
                    buttonText: 'Sign In',
                    routeName: 'cards_page')),
            TextButton(
              child: Text('Don\'t you have an account? Create'),
              onPressed: () {
                Navigator.pushNamed(context, 'register_page');
              },
            )
          ],
        ));
  }

  Widget _generateSubmitButton(
      {required GlobalKey<FormState> form,
      required String buttonText,
      String routeName = '',
      bool isContrasted = false}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(getContextPercentaje(context, 0.50)),
          ),
          primary: Colors.lightBlue,
          minimumSize: Size.fromHeight(50)),
      onPressed: () {
        if (form.currentState!.validate()) {
          if (routeName != '') {
            Navigator.pushNamed(context, routeName);
          } else {
            print('No actions required.');
          }
          // Send to server
        }
      },
      child: Text(
        buttonText,
      ),
    );
  }
}
