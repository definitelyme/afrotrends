import 'dart:async';

import 'package:afrotrends/blogger/domain/facades/auth_facade.dart';
import 'package:afrotrends/blogger/infrastructure/firebase/push_notification.dart';
import 'package:bloc/bloc.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import './bloc.dart';

@injectable
class RootBloc extends Bloc<RootEvent, RootState> {
  final AuthFacade _authFacade;
  final PushNotification _pushNotification;
  final DataConnectionChecker _connectionChecker;

  RootBloc({
    @required AuthFacade authFacade,
    @required PushNotification pushNotification,
    @required DataConnectionChecker connectionChecker,
  })  : _authFacade = authFacade,
        _pushNotification = pushNotification,
        _connectionChecker = connectionChecker;

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
      createAnonymousUser: (e) async* {
        if (await _connectionChecker.hasConnection) {
          await _authFacade.anonymousAuthentication();
          _pushNotification.registerDevice();
          yield state.copyWith(hasInternetConnection: true);
        } else {
          yield state.copyWith(hasInternetConnection: false);
        }
      },
      configurePushNotification: (e) async* {
        if (!state.fcmIsConfigured)
          _pushNotification.configure(
            onMessage: (Map<String, dynamic> message) async {
              add(RootEvent.onMessage(message));
            },
            onLaunch: (Map<String, dynamic> message) async {
              add(RootEvent.onLaunch(message));
            },
            onResume: (Map<String, dynamic> message) async {
              add(RootEvent.onResume(message));
            },
          );
        yield state.copyWith(fcmIsConfigured: true);
      },
      onMessage: (e) async* {
        yield state.copyWith(notification: e.data);
      },
      onResume: (e) async* {
        yield state.copyWith(notification: e.data);
      },
      onBackgroundMessage: (e) async* {
        yield state.copyWith(notification: e.data);
      },
      onLaunch: (e) async* {
        yield state.copyWith(notification: e.data);
//        print("onLaunch from within => ${e.data}");
      },
    );
  }
}
