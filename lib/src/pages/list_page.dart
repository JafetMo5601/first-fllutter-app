import 'package:first_flutter_app/src/providers/menu_provider.dart';
import 'package:first_flutter_app/src/utils/icons_string_util.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      body: _list()
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      }
    );
  }

  List<Widget> _listItems(retrievedData, BuildContext context) {

    final List<Widget> options = [];

    retrievedData.forEach((option) {
      final tempWidget = ListTile(
        title: Text(option['text']),
        leading: getIcon(option['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){
          Navigator.pushNamed(context, option['route']);
        },
      );

      options.add(tempWidget);
      options.add(Divider());

    });

    return options;
  }

}