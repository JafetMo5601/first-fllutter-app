import 'package:first_flutter_app/src/utils/fields_generator.dart';
import 'package:first_flutter_app/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class AuthPage extends StatelessWidget {
  final _formAuth = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FormContainerWrappper(widgetToWrap: _createAuthForm(), maxHeight: getContextPercentaje(context, 1.5)),
    );
  }

  Widget _createAuthForm() {
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
              style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold)
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
              child: ElevatedSubmitButton(
                form: _formAuth, 
                buttonText: 'Sign In', 
                routeToRedirect: 'login_page')),
          SizedBox(height: 15.0),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: ElevatedSubmitButton(
                form: _formAuth, 
                buttonText: 'Sign Up', 
                isContrasted: true,              
                routeToRedirect: 'register_page')),
          SizedBox(height: 30.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: DividerWithText(dividerText: 'Or connect using')
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SquareButtonWithIcons(buttonIcon: FaIcon(FontAwesomeIcons.google), buttonColor: Colors.red.shade900),
              SquareButtonWithIcons(buttonIcon: FaIcon(FontAwesomeIcons.apple), buttonColor: Colors.black54),
              SquareButtonWithIcons(buttonIcon: FaIcon(FontAwesomeIcons.facebookF), buttonColor: Colors.lightBlue.shade900),
            ],
          )
        ],
      ),
    );
  }
}
