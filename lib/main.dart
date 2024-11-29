import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/service/news.dart';
import 'package:news_app/views/Home.dart';

void main() async
{
  runApp(NewsApp());
}
class NewsApp  extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(home: Home(),debugShowCheckedModeBanner: false,);
  }

}