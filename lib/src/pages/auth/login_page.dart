import 'package:first_flutter_app/src/utils/fields_generator.dart';
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
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Center(
        child: formWrapperContainer(_createLoginForm(), 300.0),
      ),
    );
  }

  Widget _createLoginForm() {
    return Form(
      key: _formLogin,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          generateEmailField(_emailController),
          SizedBox(height: 15),
          generatePasswordField(_passwordController),
          SizedBox(height: 30),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: _generateSubmitButton(_formLogin, 'Sign In')),
          TextButton(            
            onPressed: () {
              Navigator.pushNamed(context, 'forgot_password_page');
            },
            child: Text(
              'Forgot Password?',
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ),
        ],
      )
    );
  }

  Widget _generateSubmitButton(GlobalKey<FormState> form, String buttonText, {bool isContrasted = false}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.lightBlue,
        minimumSize: Size.fromHeight(50)),
      onPressed: () {
        if (form.currentState!.validate()) {
          // Send to server
        }
      },
      child: Text(
        buttonText,
      ),
    );
  }
}
