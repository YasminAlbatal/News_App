import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/article_model.dart';
import '../service/news.dart';
import 'contentList.dart';

class contentListWidget extends StatefulWidget {
   contentListWidget({
    super.key,
    required this.category
  });
  String category;

  @override
  State<contentListWidget> createState() => _contentListWidgetState();
}

class _contentListWidgetState extends State<contentListWidget> {
  var future;
  @override
  void initState() {
    super.initState();
    future= News(Dio()).getNews(category:widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<article_model>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ContentList(
              article: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
                child: SizedBox(
                    height: 600,
                    width: 200,
                    child: Center(
                        child: Text('oops there was an error, try later'))));
          } else {
            return SliverToBoxAdapter(
              child: SizedBox(
                  height: 600,
                  width: 200,
                  child: Center(child: CircularProgressIndicator())),
            );
          }
        });


  }
}
