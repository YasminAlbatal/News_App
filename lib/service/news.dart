import 'package:dio/dio.dart';
import 'package:news_app/Model/article_model.dart';

class News {
  final Dio dio;

  News(this.dio);

  Future<List<article_model>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=&apiKey=a8bc23054a284acb9b816f7666a4605e&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<article_model> article_list = [];
      for (var article in articles) {
        article_model articleModle = article_model(
            image: article['urlToImage'],
            title: article['title'],
            description: article['description']);
        article_list.add(articleModle);
      }
      return article_list;
    }
    catch(e)
    {
      return [];
    }
  }
}
