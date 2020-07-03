import 'package:afrotrends/features/data/remote/data_sources/post_datasource.dart';
import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class PostRepository {
  final DataConnectionChecker _connectionChecker;
  final PostDataSource _postDataSource;

  PostRepository({DataConnectionChecker connectionChecker, PostDataSource dataSource})
      : assert(connectionChecker != null),
        assert(dataSource != null),
        _connectionChecker = connectionChecker,
        _postDataSource = dataSource;

  Future<Posts> fetchLatestPosts({QueryBuilder query}) async {
    final posts = _postDataSource.fetchLatestPosts(query: query);
    // Here, we'll cache new incoming posts
    return posts;

    // Else fetch from Cache
//    return null;
  }

  Future<Posts> fetchOlderPosts({QueryBuilder query}) async {
    //
  }
}
