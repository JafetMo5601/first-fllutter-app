import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final _icons = <String, dynamic>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'remove': Icons.remove,
  'login': Icons.login,
  'account_circle': Icons.account_circle,
  'lock': Icons.lock,
  'register': Icons.person_add,
  'lock_password': Icons.lock_clock,
  'person': Icons.person,
  'email': Icons.email_outlined,
  'account_box': Icons.account_box,
};

Icon getIcon (String iconName, {iconColor = Colors.blue}) {
  return Icon(_icons[iconName], color: iconColor);
}