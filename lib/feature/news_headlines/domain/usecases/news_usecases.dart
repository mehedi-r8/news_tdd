import 'package:news_tdd/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:news_tdd/core/usecase/usecase.dart';
import 'package:news_tdd/feature/news_headlines/domain/entities/news_entities.dart';
import 'package:news_tdd/feature/news_headlines/domain/repositories/news_repository.dart';

class GetNewsHeadlines implements UseCase<NewsHeadlines, NoParams> {
  late final NewsHeadlinesRepository repository;
  @override
  Future<Either<Failure, NewsHeadlines>> call(NoParams params) async {
    return await repository.getnewsheadlines();
    // TODO: implement call
    throw UnimplementedError();
  }
}
