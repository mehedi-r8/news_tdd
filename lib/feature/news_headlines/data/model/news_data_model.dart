// To parse this JSON data, do
//
//     final newsDataModel = newsDataModelFromJson(jsonString);

import 'dart:convert';

import 'package:news_tdd/feature/news_headlines/domain/entities/news_entities.dart';

//NewsDataModel newsDataModelFromJson(String str) =>
//NewsDataModel.fromJson(json.decode(str));

//String newsDataModelToJson(NewsDataModel data) => json.encode(data.toJson());

// ignore: must_be_immutable
class NewsDataModel extends NewsHeadlines {
  NewsDataModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    //required this.publishedAt,
    required this.content,
  }) : super(
            author: author,
            title: title,
            description: description,
            url: url,
            urlToImage: urlToImage,
            content: content);

  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  //DateTime publishedAt;
  String content;

  factory NewsDataModel.fromJson(Map<String, dynamic> json) => NewsDataModel(
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        //publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        //"publishedAt": publishedAt.toIso8601String(),
        "content": content,
      };
}
