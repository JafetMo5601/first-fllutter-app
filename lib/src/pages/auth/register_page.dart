import 'package:first_flutter_app/src/utils/fields_generator.dart';
import 'package:first_flutter_app/src/utils/utils.dart';
import 'package:first_flutter_app/src/widget/header.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250.0,
              child: HeaderWidget(250.0, false, Icons.login_rounded),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: getContextPercentaje(context, 0.12)),
            ),
            _createRegisterForm()
          ],
        ),
      )
    );
  }

  Widget _createRegisterForm() {
    var form = Form(
        key: _formRegister,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GeneralTextField(
                textController: _fullnameController,
                desiredIcon: 'register',
                labelText: 'Full Name'),
            SizedBox(height: 15),
            EmailField(emailController: _emailController),
            SizedBox(height: 15),
            PasswordField(passwordController: _passwordController),
            SizedBox(height: 30),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getContextPercentaje(context, 0.20)),
                child: ElevatedSubmitButton(
                    form: _formRegister,
                    buttonText: 'Sign In',
                    routeToRedirect: 'cards_page')),
            TextButton(
              child: Text('Already have an account? Login'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
    return form;
  }
}
