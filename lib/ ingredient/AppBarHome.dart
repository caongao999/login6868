import 'package:badges/badges.dart' as badge;
import 'package:flutter/material.dart';

class AppBarHome extends StatefulWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  State<AppBarHome> createState() => _AppBarHomeState();
}

class _AppBarHomeState extends State<AppBarHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Row(
          children: [
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.blueGrey,
              ),
              child: Icon(Icons.logo_dev_outlined),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(
                "S_Grap",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Spacer(),
            badge.Badge(
              badgeContent: Text('3'),
              child: InkWell(
                onTap: () {},
                child: Icon(Icons.notifications),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: IconButton(
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: CustomSearch(),
                  );
                },
                icon: Icon(Icons.search),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List<String> searchtexts = ['hello', 'hi', 'event', 'product', 'friend', 'minhduyy', 'tân trà', 'ffff'];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in searchtexts) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in searchtexts) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
