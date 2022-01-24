import 'package:first_flutter_app/src/utils/icons_string_util.dart';
import 'package:flutter/material.dart';


class EmailField extends StatelessWidget {
  TextEditingController emailController;

  EmailField({
    required this.emailController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        controller: emailController,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          icon: getIcon('email'),
          labelText: 'Email',
          hintText: 'Email',
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Enter valid email as example@email.com';
          }
          return null;
        },
      ),
    );
  }
}


class PasswordField extends StatelessWidget {
  TextEditingController passwordController;

  PasswordField({
    required this.passwordController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
            border: UnderlineInputBorder(),
            icon: getIcon('lock'),
            labelText: 'Password',
            hintText: 'Enter a secure password'),
        validator: (String? value) {
          // Add regex
          if (value == null || value.isEmpty) {
            return 'Enter a password.';
          }
          return null;
        },
      ),
    );
  }
}


class GeneralTextField extends StatelessWidget {
  TextEditingController textController;
  String desiredIcon;
  String labelText;

  GeneralTextField({
    required this.textController,
    this.desiredIcon = 'default_text_input',
    this.labelText = 'Insert your input',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        controller: textController,
        decoration: InputDecoration(
            border: UnderlineInputBorder(),
            icon: getIcon(desiredIcon),
            labelText: labelText),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Enter a valid input.';
          }
          return null;
        },
      ),
    );
  }
}


class DividerWithText extends StatelessWidget {
  final Divider _customizedDivider = Divider(height: 2, thickness: 1);
  String dividerText;

  DividerWithText({
    Key? key,
    required this.dividerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(child: _customizedDivider),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(dividerText)
          ),
          Expanded(child: _customizedDivider),
        ],
      ),
    );
  }
}


class SquareButtonWithIcons extends StatelessWidget {
  Color buttonColor; 
  dynamic buttonIcon = getIcon('default_button');

  SquareButtonWithIcons({
    this.buttonColor = Colors.blue,
    this.buttonIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        fixedSize: Size(20, 20)
      ),
      onPressed: (){}, 
      child: buttonIcon
    );
  }
}

class SubmitButton extends StatelessWidget {
  GlobalKey<FormState> form; 
  String buttonText;
  bool isContrasted;
  double symmetry;
  
  SubmitButton({
    required this.form,
    required this.buttonText,
    this.symmetry = 15.0,
    this.isContrasted = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

class FormContainerWrappper extends StatelessWidget {
  double containerHeight; 
  Widget widgetToWrap;

  FormContainerWrappper({
    required this.containerHeight,
    required this.widgetToWrap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey.shade50)),
      child: widgetToWrap,
    );
  }
}