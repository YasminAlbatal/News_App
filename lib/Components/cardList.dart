import 'package:flutter/cupertino.dart';
import 'card.dart';

class cardList extends StatelessWidget {
   cardList({
    super.key,
  });

  final List CardList = [
    card(title: "General", image: 'assets/images/news.jpeg'),
    card(title: "Business", image: 'assets/images/busi.jpeg'),
    card(title: "Technology", image: 'assets/images/tech.jpeg'),
    card(title: "Science", image: 'assets/images/s.jpeg'),
    card(title: "Sports", image: 'assets/images/sports.jpeg'),
    card(title: "Entertainment", image: 'assets/images/entert.jpeg'),
    card(title: "Health", image: 'assets/images/healthy.jpeg')

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: CardList.length,
    itemBuilder: (context, index) => CardList[index],

    );
  }
}
