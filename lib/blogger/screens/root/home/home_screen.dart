import 'package:afrotrends/blogger/app/blocs/for_you_screen_bloc/bloc.dart';
import 'package:afrotrends/blogger/app/blocs/home_screen_bloc/bloc.dart';
import 'package:afrotrends/blogger/app/blocs/root_bloc/bloc.dart';
import 'package:afrotrends/blogger/screens/root/home/for_you_screen.dart';
import 'package:afrotrends/blogger/screens/root/home/home_tab_item_screen.dart';
import 'package:afrotrends/core/utils/app_colors.dart';
import 'package:afrotrends/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  var _tabBarItems = ["For You", "Top Stories", "Viral Trends", "Entertainment", "Beauty"];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabBarItems.length, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RootBloc, RootState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: BlocBuilder<HomeScreenBloc, HomeScreenState>(
              builder: (context, state) {
                // Send out Events
                context.bloc<ForYouScreenBloc>().add(ForYouScreenEvent.getCategories());
                context.bloc<ForYouScreenBloc>().add(ForYouScreenEvent.getLatestNews());
                
                _tabController.addListener(() {
                  if(_tabController.previousIndex != _tabController.index) {
                    context.bloc<HomeScreenBloc>().add(
                      HomeScreenEvent.getPostsForThisWeek(item: _tabBarItems[_tabController.index]),
                    );
                    context.bloc<HomeScreenBloc>().add(
                      HomeScreenEvent.getOlderPosts(item: _tabBarItems[_tabController.index]),
                    );
                  }
                });

                return NestedScrollView(
                  key: ValueKey("home-nested-scrollView"),
                  // TODO: Uncomment this when implementing BottomNav
//                  controller: context.bloc<RootBloc>().state.scrollController,
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
                          backgroundColor: AppColors.oylexPrimary,
                        ),
                        bottom: PreferredSize(
                          preferredSize: Size(double.infinity, Get.height * 0.05),
                          child: TabBar(
                            key: ValueKey("home-tabbar"),
                            controller: _tabController,
                            labelColor: AppColors.oylexAccent,
                            unselectedLabelColor: Colors.grey,
                            isScrollable: true,
                            indicatorColor: AppColors.oylexAccent,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorPadding: EdgeInsets.symmetric(horizontal: 10.0),
                            tabs: _tabBarItems.map<Widget>(
                              (item) {
                                var test_key = ValueKey("tabbaritem-$item");
                                return Container(
                                  key: test_key,
                                  height: Get.height * 0.05,
                                  child: Tab(
                                    text: item,
                                  ),
                                );
                              },
                            ).toList(),
                            onTap: (index) {
                              context.bloc<HomeScreenBloc>().add(
                                  HomeScreenEvent.getPostsForThisWeek(item: _tabBarItems[index]),
                                );
                              context.bloc<HomeScreenBloc>().add(
                                HomeScreenEvent.getOlderPosts(item: _tabBarItems[index]),
                              );
                            },
                          ),
                        ),
                      ),
                    ];
                  },
                  body: TabBarView(
                    key: ValueKey("home-tabbarView"),
                    controller: _tabController,
                    physics: defaultScrollPhysics(),
                    children: [ForYouScreen(), for (String item in _tabBarItems.sublist(1, _tabBarItems.length)) HomeTabItemScreen(listItem: item)],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
