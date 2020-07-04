import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:afrotrends/presentation/manager/home_bloc/home_bloc.dart';
import 'package:afrotrends/presentation/widgets/home/beauty_widget.dart';
import 'package:afrotrends/presentation/widgets/home/black-ex_widget.dart';
import 'package:afrotrends/presentation/widgets/home/entertainment_widget.dart';
import 'package:afrotrends/presentation/widgets/home/for_you_widget.dart';
import 'package:afrotrends/presentation/widgets/home/v-trends_widget.dart';
import 'package:afrotrends/utils/colors.dart';
import 'package:afrotrends/utils/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  var _tabBarItems = [
    ForYouWidget.name,
    BlackExcellenceWidget.name,
    EntertainmentWidget.name,
    ViralTrendsWidget.name,
    BeautyWidget.name,
  ];
  HomeBloc _bloc;
  ScrollController _controller;
  TabController _tabController;
  int _lastMonthPostsPage = 1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabBarItems.length, vsync: this, initialIndex: 0);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = BlocProvider.of<HomeBloc>(context);
    _controller = _bloc.state.scrollController;
  }

  @override
  Widget build(BuildContext context) {
    _tabController.addListener(() {
//      BlocProvider.of<HomeBloc>(context).add(HomeEvent.fetchLatestPosts(queryBuilder: QueryBuilder(perPage: 10)));
    });

    bool _handleOnScrollNotification(ScrollNotification notification) {
      if (notification is ScrollEndNotification && _controller.position.pixels == _controller.position.maxScrollExtent)
        _bloc
          ..dispatchLastMonthPostsEvent(QueryBuilder(
            page: ++_lastMonthPostsPage,
            perPage: MkHelpers.lastMonthPostsPerPage,
            orderBy: PostOrder.date,
            before: MkHelpers.getDate(today.subtract(Duration(days: 7))),
            after: MkHelpers.getDate(today.subtract(Duration(days: 30))),
          ));
      return true;
    }

    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        // ignore: close_sinks
        final _homeBloc = context.bloc<HomeBloc>();
        // Listen to Timeout events
        if (_homeBloc?.state?.failure != null)
          Get.snackbar(null, _homeBloc?.state?.failure?.message,
              icon: const Icon(
                Icons.warning,
                color: Colors.orangeAccent,
              ),
              colorText: Colors.white,
              backgroundColor: Colors.black87,
              snackPosition: SnackPosition.TOP,
              forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
              shouldIconPulse: true,
              duration: const Duration(seconds: 20),
              isDismissible: false,
              snackStyle: SnackStyle.FLOATING,
              margin: EdgeInsets.all(Get.height * 0.01));
      },
      child: Scaffold(
        body: NotificationListener<ScrollEndNotification>(
          onNotification: _handleOnScrollNotification,
          child: NestedScrollView(
            scrollDirection: Axis.vertical,
            controller: _controller,
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  floating: true,
                  forceElevated: innerBoxIsScrolled,
                  elevation: 0.0,
                  titleSpacing: deviceMargin(context),
                  backgroundColor: Colors.transparent,
                  automaticallyImplyLeading: true,
                  title: CircleAvatar(
                    backgroundImage: AssetImage("$IMAGES_FOLDER/icon.png"),
                    backgroundColor: AtColors.accentColor,
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size(double.infinity, Get.height * 0.05),
                    child: TabBar(
                      controller: _tabController,
                      labelColor: AtColors.accentColor.shade300,
                      unselectedLabelColor: Colors.grey,
                      isScrollable: true,
                      indicatorColor: AtColors.accentColor.shade300,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      tabs: _tabBarItems.map<Widget>(
                        (item) {
                          return Container(
                            height: Get.height * 0.05,
                            child: Tab(
                              text: item,
                            ),
                          );
                        },
                      ).toList(),
                      onTap: (index) {
                        //
                      },
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              controller: _tabController,
              physics: defaultScrollPhysics(),
              children: [
                ForYouWidget(),
                BlackExcellenceWidget(),
                EntertainmentWidget(),
                ViralTrendsWidget(),
                BeautyWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
