import 'package:afrotrends/blogger/app/blocs/for_you_screen_bloc/bloc.dart';
import 'package:afrotrends/blogger/app/blocs/home_screen_bloc/bloc.dart';
import 'package:afrotrends/blogger/app/blocs/root_bloc/bloc.dart';
import 'package:afrotrends/blogger/screens/root/home/home_screen.dart';
import 'package:afrotrends/core/service_container/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootChild extends StatelessWidget {
  final PageStorageBucket _storageBucket = PageStorageBucket();
  final List<Widget> _destinationViews = [
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<HomeScreenBloc>()),
        BlocProvider(create: (_) => getIt<ForYouScreenBloc>()),
      ],
      child: HomeScreen(),
    ),
//    CategoriesScreen(),
//    SavedScreen(),
//    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<RootBloc>(context).add(RootEvent.createAnonymousUser());
    BlocProvider.of<RootBloc>(context).add(RootEvent.configurePushNotification());

    return BlocBuilder<RootBloc, RootState>(
//      bloc: BlocProvider.of<RootBloc>(context),
      builder: (context, state) {
        // ignore: close_sinks
        var bloc = context.bloc<RootBloc>();
        
        print(bloc.state.notification);

        bloc.state.scrollController.addListener(() {
          var controller = bloc.state.scrollController;
          var isNavVisible = bloc.state.bottomNavVisibility;

          if (controller.position.userScrollDirection == ScrollDirection.reverse && controller.offset > kBottomNavigationBarHeight) if (isNavVisible)
            bloc.add(RootEvent.updateBottomNavVisibility(false));
          if (controller.position.userScrollDirection == ScrollDirection.forward || controller.offset == 0.0) if (!isNavVisible) bloc.add(RootEvent.updateBottomNavVisibility(true));
        });

        return SafeArea(
          top: false,
          child: Scaffold(
            body: MultiBlocProvider(
              providers: [
                BlocProvider(create: (_) => getIt<HomeScreenBloc>()),
                BlocProvider(create: (_) => getIt<ForYouScreenBloc>()),
              ],
              child: PageStorage(
                bucket: _storageBucket,
                child: HomeScreen(),
              ),
            ),
//            bottomNavigationBar: AnimatedContainer(
//              duration: Duration(milliseconds: 350),
//              height: bloc.state.bottomNavVisibility ? kBottomNavigationBarHeight : 0.0,
//              child: Wrap(
//                children: <Widget>[
//                  BottomNavigationBar(
//                    currentIndex: bloc.state.currentIndex,
//                    elevation: 5.0,
//                    showSelectedLabels: false,
//                    showUnselectedLabels: false,
//                    onTap: (index) => bloc.add(RootEvent.updatePageIndex(index)),
//                    type: BottomNavigationBarType.fixed,
//                    backgroundColor: AppColors.windowBackground.shade600,
//                    selectedItemColor: AppColors.oylexPrimary.shade600,
//                    unselectedItemColor: AppColors.oylexPrimaryDark.shade300,
//                    items: Destination.destinations.map((destination) {
//                      return BottomNavigationBarItem(
//                        title: Text(destination.title),
//                        icon: Icon(destination.unSelectedIcon),
//                        activeIcon: Icon(destination.selectedIcon),
//                      );
//                    }).toList(),
//                  ),
//                ],
//              ),
//            ),
          ),
        );
      },
    );
  }
}
