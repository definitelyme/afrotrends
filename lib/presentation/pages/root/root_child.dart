import 'package:afrotrends/features/domain/api_client/query/args/order/export_order.dart';
import 'package:afrotrends/features/domain/api_client/query/query_builder.dart';
import 'package:afrotrends/presentation/manager/home_bloc/home_bloc.dart';
import 'package:afrotrends/presentation/pages/home/home_screen.dart';
import 'package:afrotrends/utils/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootChild extends StatefulWidget {
  @override
  _RootChildState createState() => _RootChildState();
}

class _RootChildState extends State<RootChild> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Dispatch the event to fetch latest posts
    BlocProvider.of<HomeBloc>(context)
      ..dispatchLatestPostEvent(QueryBuilder(
        perPage: MkHelpers.latestPostsPerPage,
        orderBy: PostOrder.date,
        before: today,
        after: MkHelpers.getDate(today.subtract(Duration(days: 7))),
      ));

    BlocProvider.of<HomeBloc>(context)
      ..dispatchCategoriesEvent(QueryBuilder(
        perPage: MkHelpers.categoriesPerPage,
        orderBy: CategoryOrder.count,
        sortBy: SortBy.desc,
      ));

    BlocProvider.of<HomeBloc>(context)
      ..dispatchLastMonthPostsEvent(QueryBuilder(
        perPage: MkHelpers.lastMonthPostsPerPage,
        orderBy: PostOrder.date,
        before: MkHelpers.getDate(today.subtract(Duration(days: 7))),
        after: MkHelpers.getDate(today.subtract(Duration(days: 30))),
      ));
  }

  @override
  Widget build(BuildContext context) => HomeScreen();
}
