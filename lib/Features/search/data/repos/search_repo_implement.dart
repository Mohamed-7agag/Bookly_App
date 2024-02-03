// ignore_for_file: deprecated_member_use
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplement implements SearchRepo {
  final ApiServices apiServices;

  SearchRepoImplement({required this.apiServices});
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks(
      {required String text}) async {
    try {
      var data = await apiServices.get(
        endpoint: 'volumes?Filtering=free-ebooks&q=$text&Sorting=relevance',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }
}
