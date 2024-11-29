import 'package:flutter/material.dart';
import 'package:news_app/Components/contentListWidget.dart';

class CategoryView extends StatelessWidget {
  String category;

  CategoryView({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
