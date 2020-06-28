library query_builder;

import 'package:afrotrends/features/domain/api_client/exports.dart';

class QueryBuilder {
  /// Limit result set to all items that have the specified term assigned in the taxonomy.
  final TaxonomyType taxonomy;

  /// Limit response to posts published before a given ISO8601 compliant date.
  final DateTime before;

  /// Limit response to posts published after a given ISO8601 compliant date.
  final DateTime after;

  /// Sort collection by object attribute.
  final Order orderBy;

  /// Order sort attribute ascending or descending.
  final SortBy sortBy;

  /// Maximum number of items to be returned in result set.
  final int perPage;

  /// Specify an arbitrary offset at which to start retrieving posts.
  final int offset;

  /// Current page of the collection.
  final int page;

  /// Instantiate a QueryBuilder
  const QueryBuilder({this.taxonomy, this.before, this.after, this.orderBy, this.sortBy, this.perPage = 4, this.offset, this.page = 1});

//  factory QueryBuilder.build({
//    TaxonomyType taxonomy,
//    DateTime before,
//    DateTime after,
//    Order orderBy,
//    SortBy sortBy,
//    int perPage = 4,
//    int offset,
//    int page = 1,
//  }) {
//    return QueryBuilder._(taxonomy, before, after, orderBy, sortBy, perPage, offset, page);
//  }

  /// Copy the QueryBuilder class with some modifications.
  QueryBuilder copyWith({
    TaxonomyType taxonomy,
    DateTime before,
    DateTime after,
    Order orderBy,
    SortBy sortBy,
    int perPage = 4,
    int offset,
    int page = 1,
  }) {
    return QueryBuilder(
      taxonomy: taxonomy ?? this.taxonomy,
      before: before ?? this.before,
      after: after ?? this.after,
      orderBy: orderBy ?? this.orderBy,
      sortBy: sortBy ?? this.sortBy,
      perPage: perPage ?? this.perPage,
      offset: offset ?? this.offset,
      page: page ?? this.page,
    );
  }

  Map<String, dynamic> build() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull(taxonomy?.key, taxonomy?.id);
    writeNotNull(Limit.before.name, before?.toIso8601String());
    writeNotNull(Limit.after.name, after?.toIso8601String());
    writeNotNull(Order.key, orderBy);
    writeNotNull(SortBy.key, sortBy);
    writeNotNull('per_page', this?.perPage);
    writeNotNull("offset", this?.offset);
    writeNotNull('page', this?.page);
    return val;
  }
}

// /posts
// /categories
// /posts?categories={id}
