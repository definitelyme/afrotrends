import 'package:afrotrends/features/data/remote/data_sources/category_datasource.dart';
import 'package:afrotrends/features/data/remote/models/taxonomy/exports_taxonomy.dart';
import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class CategoryRepository {
  final DataConnectionChecker _connectionChecker;
  final CategoryDataSource _categoryDataSource;

  CategoryRepository(this._connectionChecker, this._categoryDataSource);

  Future<Taxonomies> fetchCategoriesForHome({QueryBuilder query}) async {
    final categories = await _categoryDataSource.fetchActiveCategories(query);
    return categories;
  }
}
