import 'dart:async';

import 'package:bloc/bloc.dart';

import './bloc.dart';

class RootBloc extends Bloc<RootEvent, RootState> {
  @override
  RootState get initialState => RootState.initial();

  @override
  Stream<RootState> mapEventToState(
    RootEvent event,
  ) async* {
    yield* event.map(
      updatePageIndex: (e) async* {
        yield state.copyWith(currentIndex: e.index);
      },
      updateBottomNavVisibility: (e) async* {
        yield state.copyWith(bottomNavVisibility: e.isVisible);
      },
    );
  }
}
