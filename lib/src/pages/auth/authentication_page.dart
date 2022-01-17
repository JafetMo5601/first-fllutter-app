import 'package:first_flutter_app/src/utils/fields_generator.dart';
import 'package:first_flutter_app/src/utils/icons_string_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthPage extends StatelessWidget {
  final _formAuth = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authentication Page'),
      ),
      body: Center(
        child: formWrapperContainer(_createAuthForm(context), 450.0)
      ),
    );
  }

  Widget _createAuthForm(context) {
    return Form(
      key: _formAuth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Welcome to LoL Cards App!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87, fontSize: 30, fontWeight: FontWeight.bold)
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 50.0),
            child: Text(
              'Discover amazing cards and interact with the most that you like.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87, fontSize: 16)
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: _generateSubmitButton(context, _formAuth, 'Sign In')),
          SizedBox(height: 15.0),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: _generateOutlinedSubmitButton(context, _formAuth, 'Sign Up')),
          SizedBox(height: 30.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: dividerWithText('Or connect using')
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              squaredButtonsWithIcons(FaIcon(FontAwesomeIcons.google), buttonColor: Colors.red.shade900),
              squaredButtonsWithIcons(FaIcon(FontAwesomeIcons.apple), buttonColor: Colors.black54),
              squaredButtonsWithIcons(FaIcon(FontAwesomeIcons.facebookF), buttonColor: Colors.lightBlue.shade900),
            ],
          )
        ],
      ),
    );
  }

  Widget _generateOutlinedSubmitButton(context, GlobalKey<FormState> form, String buttonText) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(      
        primary: Colors.white, 
        minimumSize: Size.fromHeight(50), 
        side: BorderSide(color: Colors.lightBlue)),
      onPressed: () {
        Navigator.pushNamed(context, 'register_page');
      },
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.lightBlue
        ),
      ),
    );
  }

  Widget _generateSubmitButton(context, GlobalKey<FormState> form, String buttonText, {bool isContrasted = false}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.lightBlue,
        minimumSize: Size.fromHeight(50)),
      onPressed: () {
        Navigator.pushNamed(context, 'login_page');
      },
      child: Text(
        buttonText,
      ),
    );
  }

}
