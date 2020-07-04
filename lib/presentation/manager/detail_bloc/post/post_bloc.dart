import 'dart:async';

import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'post_bloc.freezed.dart';
part 'post_bloc_event.dart';
part 'post_bloc_state.dart';

@Injectable()
class PostBloc extends Bloc<PostBlocEvent, PostBlocState> {
  PostBloc() : super(PostBlocState.init());

  @override
  Stream<PostBlocState> mapEventToState(
    PostBlocEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
