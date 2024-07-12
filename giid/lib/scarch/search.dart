import 'package:flutter/material.dart';
import 'package:giid/events/lives2/live_guides.dart';
import 'package:giid/events/lives3/live_guides.dart';
import 'package:giid/events/lives4/live_guides.dart';
import 'package:giid/events/lives5/live_guides.dart';
import 'package:giid/events/lives6/live_guides.dart';
import '../events/lives/live_guides.dart';

class SearchModel {
  final String value;
  final int level;

  const SearchModel({required this.value, required this.level});
}

class CustomSearchDelegate extends SearchDelegate {
  List<SearchModel> list = [
    SearchModel(value: 'Hall1-The Phantom of the Opera', level: 1),
    SearchModel(value: 'Hall2-Queensland Ballet', level: 2),
    SearchModel(value: 'Hall3-Musical Recital', level: 3),
    SearchModel(
        value: 'Hall4-Artist Anna Fafaliou Brings leep Performance to Peak',
        level: 4),
    SearchModel(value: 'Hall5-chauspielhaus Wuppertal', level: 5),
    SearchModel(value: 'Hall6-Traditional Art', level: 6),
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<SearchModel> matchQuery = [];
    for (var events in list) {
      if (events.value.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(SearchModel(value: events.value, level: events.level));
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index].value;
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<SearchModel> matchQuery = [];
    for (var events in list) {
      if (events.value.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(SearchModel(value: events.value, level: events.level));
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index].value;
          int level = matchQuery[index].level;
          return InkWell(
            onTap: () {
              //跳转
              // print(level);
              switch (level) {
                case 1:
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LiveGuides();
                  }));
                  break;
                case 2:
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LiveGuides2();
                  }));
                  break;
                case 3:
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LiveGuides3();
                  }));
                  break;
                case 4:
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LiveGuides4();
                  }));
                  break;
                case 5:
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LiveGuides5();
                  }));
                  break;
                case 6:
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LiveGuides6();
                  }));
                  break;
              }
            },
            child: ListTile(
              title: Text(result),
            ),
          );
        });
  }
}
