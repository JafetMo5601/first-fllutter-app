import 'package:first_flutter_app/src/utils/icons_string_util.dart';
import 'package:flutter/material.dart';

Widget generateEmailField(TextEditingController emailController) {
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

Widget generatePasswordField(TextEditingController passwordController) {
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

Widget generateTextField(TextEditingController textController, String labelText, String desiredIcon) {
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

Widget generateSubmitButton(GlobalKey<FormState> form, String buttonText) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        primary: Colors.lightBlue, minimumSize: Size.fromHeight(50)),
    onPressed: () {
      if (form.currentState!.validate()) {
        // Send to server
      }
    },
    child: Text(
      buttonText,
      style: TextStyle(color: Colors.white, fontSize: 18),
    ),
  );
}


Widget formWrapperContainer(Widget widgetToWrap, double containerHeight) {
  return Container(

    height: containerHeight,
    margin: EdgeInsets.symmetric(horizontal: 25.0),
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(color: Colors.grey.shade50)
    ),
    child: widgetToWrap,
  );
}