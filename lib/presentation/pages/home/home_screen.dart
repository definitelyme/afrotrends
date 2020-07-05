import 'package:afrotrends/presentation/manager/home_bloc/home_bloc.dart';
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
//    BeautyWidget.name,
  ];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabBarItems.length, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    _tabController.addListener(() {
//      BlocProvider.of<HomeBloc>(context).add(HomeEvent.fetchLatestPosts(queryBuilder: QueryBuilder(perPage: 10)));
    });

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
              duration: const Duration(seconds: 10),
              isDismissible: false,
              snackStyle: SnackStyle.FLOATING,
              mainButton: FlatButton(
                onPressed: () => _homeBloc.add(_homeBloc.state.lastSink),
                child: Text("Try again", style: TextStyle(color: Colors.white)),
              ),
              margin: EdgeInsets.all(Get.height * 0.01));
      },
      child: Scaffold(
        body: NestedScrollView(
          scrollDirection: Axis.vertical,
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
//              BeautyWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
