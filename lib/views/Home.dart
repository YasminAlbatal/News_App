import 'package:flutter/material.dart';

import '../Components/cardList.dart';
import '../Components/contentListWidget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                  child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "News",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text("Cloud",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.orangeAccent,
                      ))
                ],
              )),
            ),
            backgroundColor: Colors.transparent),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: 140, child: cardList()),
            ),

            contentListWidget(category: 'general',)
            //Expanded(child: ContentList())
          ],
        ));
  }
}


