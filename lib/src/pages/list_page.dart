import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {

  final List<String> options = [
    'Option 1', 
    'Option 2', 
    'Option 3', 
    'Option 4'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Temp')
      ),
      body: ListView(
        children: _listItems()
      ),
    );
  }

  List<Widget> _listItems() {
    return _createListOfItems();
  }

  List<Widget> _createListOfItems() {
    return [
      ListTile(
        title: Text('Options'),
      ),
      Divider(),
      ListTile(
        title: Text('Options'),
      ),
      Divider(),
      ListTile(
        title: Text('Options'),
      ),
      Divider()
    ];
  }

}