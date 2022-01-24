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
        child: FormContainerWrappper(widgetToWrap: _createRecoverForm(), containerHeight: 180.0),
      ),
    );
  }

  Widget _createRecoverForm() {
    return Form(
      key: _formForgot,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          EmailField(emailController: _emailController),
          SizedBox(height: 30),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: _generateSubmitButton(_formForgot, 'Recover password')),
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