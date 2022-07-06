import 'dart:convert';

import 'package:berita_flutter/api/DetailResponse.dart';
import 'package:berita_flutter/api/ListBeritaResponse.dart';
import 'package:http/http.dart' as http;

// const baseUrl = "https://www.indosiana.com/webservices/";

// class Api {
//   static Future<ListBeritaResponse> getNews() async {
//     var url = baseUrl + "get_latest_news";
//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       return ListBeritaResponse.fromJson(jsonDecode(response.body));
//     } else {
//       throw Exception("Failed to get news");
//     }
//   }

//   static Future<DetailResponse> getDetailNews(String idNews) async {
//     var url = baseUrl + "get_detail_news/$idNews";
//     final respone = await http.get(url);
//     if (respone.statusCode == 200)
//       return DetailResponse.fromJsonMap(jsonDecode(respone.body));
//     else
//       throw Exception("No Data to Load");
//   }
// }


class Api {
  String apiKey = '4fc77f15e51e465588a6c531bcb3c0f2';
  String baseUrl = 'https://newsapi.org/v2/';
  

  // Future<ArticleResult> getNews() async {
  //   var url = '$baseUrl/top-headlines?country=id&apiKey=$apiKey';
  //   var response = await get(
  //     Uri.parse(url),
  //   );
  //   if (response.statusCode == 200) {
  //     var data = jsonDecode(response.body);
  //     return ArticleResult.fromJson(jsonDecode(data));
  //   } else {
  //     throw Exception('Failed to load top headlines');
  //   }
  // }

  Future<List<ListBeritaResponse>> getNews() async {
    var url = baseUrl + 'api.indosiana.com/api/articles/id_artikel';
    // print(url);
    var response = await get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['articles'];
      // print(data);
      List<ListBeritaResponse> article = [];
      for (var item in data) {
        article.add(ListBeritaResponse.fromJson(item));
      }
      return article;
    } else {
      throw Exception('Gagal Article!');
    }
  }
  
  get(Uri parse) {}

  static getDetailNews(String id) {}
}
