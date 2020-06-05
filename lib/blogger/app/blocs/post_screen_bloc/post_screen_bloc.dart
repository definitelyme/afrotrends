import 'dart:async';

import 'package:bloc/bloc.dart';

import './bloc.dart';

class PostScreenBloc extends Bloc<PostScreenEvent, PostScreenState> {
  @override
  PostScreenState get initialState => PostScreenState.initial();

  @override
  Stream<PostScreenState> mapEventToState(
    PostScreenEvent event,
  ) async* {
    yield* event.map(
      onScroll: (e) async* {
        yield state.copyWith(isNavVisible: e.bottomNavVisibility);
      },
      onBookmark: (e) async* {},
    );
  }
}
