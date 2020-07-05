import 'package:afrotrends/features/data/remote/data_sources/comment_datasource.dart';
import 'package:afrotrends/features/data/remote/models/comment/exports_comment.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class CommentRepository {
  final DataConnectionChecker _connectionChecker;
  final CommentDataSource _commentDataSource;

  CommentRepository(this._connectionChecker, this._commentDataSource);

  Future<Comments> fetchCategoriesForHome(int postId) async {
    final comments = await _commentDataSource.fetchCommentsForPost(postId);
    return comments;
  }
}
