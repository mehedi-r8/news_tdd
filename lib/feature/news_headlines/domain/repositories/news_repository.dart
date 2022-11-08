import 'package:dartz/dartz.dart';
import 'package:news_tdd/core/error/failure.dart';
import 'package:news_tdd/feature/news_headlines/domain/entities/news_entities.dart';

abstract class NewsHeadlinesRepository {
  Future<Either<Failure, NewsHeadlines>> getnewsheadlines();
}
