import 'package:first_flutter_app/src/utils/fields_generator.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formRegister = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  final _fullnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Center(
        child: formWrapperContainer(_createRegisterForm(), 350.0),
      ),
    );
  }

  Widget _createRegisterForm() {
    return Form(
      key: _formRegister,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          generateEmailField(_emailController),
          SizedBox(height: 15),
          generatePasswordField(_passwordController),
          SizedBox(height: 15),
          generateTextField(_fullnameController, 'Full-Name', 'register'),
          SizedBox(height: 30),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: generateSubmitButton(_formRegister, 'Sign In')),
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