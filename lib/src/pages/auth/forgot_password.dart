import 'package:first_flutter_app/src/utils/fields_generator.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formForgot = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find your account'),
      ),
      body: Center(
        child: formWrapperContainer(_createRecoverForm(), 180.0),
      ),
    );
  }

  Widget _createRecoverForm() {
    return Form(
      key: _formForgot,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          generateEmailField(_emailController),
          SizedBox(height: 30),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: generateSubmitButton(_formForgot, 'Recover password')),
          // TextButton(
          //   onPressed: () {},
          //   child: Text(
          //     'Forgot Password?',
          //     style: TextStyle(color: Colors.blue, fontSize: 15),
          //   ),
          // ),
        ],
      )
    );
  }
}