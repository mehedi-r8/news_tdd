// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class NewsHeadlines extends Equatable {
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  //DateTime publishedAt;
  final String content;

  const NewsHeadlines({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    //required this.publishedAt,
    required this.content,
  });
  @override
  // TODO: implement props
  List<Object> get props {
    return [
      author,
      title,
      description,
      url,
      urlToImage,
      content,
    ];
  }

  @override
  bool get stringify => true;
}
