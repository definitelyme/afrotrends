import 'dart:async';

import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/features/data/remote/models/taxonomy/exports_taxonomy.dart';
import 'package:afrotrends/features/data/repositories/exports.dart';
import 'package:afrotrends/features/domain/api_client/query/args/taxonomy/cat_type.dart';
import 'package:afrotrends/features/domain/api_client/query/query_builder.dart';
import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

@Injectable()
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final PostRepository _postRepository;

  CategoryBloc(this._postRepository) : super(CategoryState.init());

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) async* {
    yield* mapRelatedPostsEvent(event);
  }

  Stream<CategoryState> mapRelatedPostsEvent(_FetchRelatedPosts e) async* {
    final query = QueryBuilder(taxonomy: TCategory(e.category.id));
    final categoryPosts = await _postRepository.fetchRelatedPosts(query);
    yield state.copyWith(
        posts: ((state.posts != null) && state.posts.last != categoryPosts?.items?.last)
            ? state.posts + categoryPosts?.items
            : state.posts ?? categoryPosts?.items);
  }
}
