// Import necessary standard libraries only
import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/news_tile_model.dart';

class NewsServices {
  final Dio dio = Dio();

  NewsServices();

  Future<List<NewsTileModel>> getnews({required String category}) async {
    try {
      final Response response = await dio.get(
          'https://newsdata.io/api/1/latest?apikey=pub_5047043446eb6d47b76306cfbe6fe1dadf342&category=$category&country=eg');

      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata["results"];
      List<NewsTileModel> articleslist = [];
      for (var article in articles) {
        NewsTileModel newsmodle = NewsTileModel.fromJson(article);
        articleslist.add(newsmodle);
      }
      return articleslist;
    } catch (e) {
      return [];
    }
  }
}
