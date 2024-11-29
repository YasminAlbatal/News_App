import 'package:flutter/material.dart';
import 'package:news_app/Components/contentListWidget.dart';

class CategoryView extends StatelessWidget {
  String category;
  String title;

  CategoryView({required this.category,required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(title),),
      body: CustomScrollView(
        slivers: [
          contentListWidget(
            category: category,
          )
        ],
      ),
    );
  }
}
