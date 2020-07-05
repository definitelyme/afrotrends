import 'dart:async';

import 'package:afrotrends/features/data/remote/models/comment/exports_comment.dart';
import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/features/data/repositories/comment_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'post_bloc.freezed.dart';
part 'post_bloc_event.dart';
part 'post_bloc_state.dart';

@Injectable()
class PostBloc extends Bloc<PostBlocEvent, PostBlocState> {
  final CommentRepository _commentRepository;

  PostBloc(this._commentRepository) : super(PostBlocState.init());

  @override
  Stream<PostBlocState> mapEventToState(
    PostBlocEvent event,
  ) async* {
    yield* event.map(
      fetchPostComments: (e) async* {
        final comments = await _commentRepository.fetchCategoriesForHome(e.post.id);
        yield state.copyWith(comments: comments?.items);
      },
      getExtraPostInfo: (e) async* {},
    );
  }
}
