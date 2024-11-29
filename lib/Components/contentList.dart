import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Components/content_item.dart';
import 'package:news_app/Model/article_model.dart';
import '../service/news.dart';

class ContentList extends StatelessWidget {
   ContentList({super.key,required this.article});
  List<article_model> article ;

  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: article.length,
              (context, index) => contentItem(
                  title1: article[index].title,
                  title2: article[index].description ?? '',
                  image: article[index].image ??'https://cdn.pixabay.com/photo/2017/06/26/19/03/news-2444778_1280.jpg',
                Url: article[index].url
              )

            ),
          );
  }
}
