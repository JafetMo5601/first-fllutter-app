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
        child: FormContainerWrappper(widgetToWrap: _createRegisterForm(), containerHeight: 350.0),
      ),
    );
  }

  Widget _createRegisterForm() {
    var form = Form(
        key: _formRegister,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            EmailField(emailController: _emailController),
            SizedBox(height: 15),
            PasswordField(passwordController: _passwordController),
            SizedBox(height: 15),
            GeneralTextField(
                textController: _fullnameController,
                desiredIcon: 'Full-Name',
                labelText: 'register'),
            SizedBox(height: 30),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child:
                    SubmitButton(form: _formRegister, buttonText: 'Sign In')),
          ],
        ));
    return form;
  }
}
