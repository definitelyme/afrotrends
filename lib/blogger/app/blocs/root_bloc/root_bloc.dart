import 'package:afrotrends/blogger/infrastructure/notification_impls/push_notification.dart';
import 'package:bloc/bloc.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:meta/meta.dart';
import './bloc.dart';

class RootBloc extends Bloc<RootEvent, RootState> {
  final PushNotification _pushNotification;
  final DataConnectionChecker _connectionChecker;

  RootBloc({
    @required PushNotification pushNotification,
    @required DataConnectionChecker connectionChecker,
  })  : _pushNotification = pushNotification,
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
      registerDeviceOnAfrotrends: (e) async* {
        var isConnected = await _connectionChecker.hasConnection;
        if(!isConnected)
          yield state.copyWith(hasInternetConnection: false);
        // else if (isConnected && state.fcmIsConfigured)
        //   _pushNotification.registerDevice()
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