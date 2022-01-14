import 'package:first_flutter_app/src/providers/champions_provider.dart';
import 'package:first_flutter_app/src/utils/icons_string_util.dart';
import 'package:flutter/material.dart';


class CardsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Champions Cards'),
      ),
      body: _listOfChampions()
    );
  }

  Widget _listOfChampions() {
    return FutureBuilder(
      future: championsProvider.loadChampions(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _championListOfCardsGenerator(snapshot.data, context)
        );
      }
    );
  }

  Widget _championCardWidgetGenerator(String imageURL, Widget championInformation) {
    final card = Card(
      child: Column(
        children: <Widget>[
          championInformation, 
          FadeInImage(
            height: 300.0,
            fadeInDuration: Duration(milliseconds: 200),
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            image: NetworkImage(imageURL),
            fit: BoxFit.cover
          ),
        ],
      ),
    );
  
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10.0,
            spreadRadius: 2.0
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

  List<Widget> _championListOfCardsGenerator(retrievedData, BuildContext context) {
    final List<Widget> champions = [];

    retrievedData.forEach((champion) {
      final championName = champion['name'];
      final tempWidget = Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
              title: Text("Champion: $championName"),
              subtitle: Text(champion['phrase']),
            )
          ],
        ),
      );

      final tempChampionWidget = (_championCardWidgetGenerator(champion['image'], tempWidget));

      champions.add(tempChampionWidget);
    });

    return champions;
      
    }
}