import 'package:afrotrends/features/domain/api_client/query/args/order/export_order.dart';
import 'package:afrotrends/features/domain/api_client/query/query_builder.dart';
import 'package:afrotrends/presentation/manager/home_bloc/home_bloc.dart';
import 'package:afrotrends/presentation/pages/home/home_screen.dart';
import 'package:afrotrends/utils/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Dispatch the event to fetch latest posts
    BlocProvider.of<HomeBloc>(context)
      ..dispatchLatestPostEvent(QueryBuilder(
        perPage: MkHelpers.latestPostsPerPage,
        orderBy: PostOrder.date,
        before: today,
        after: MkHelpers.getDate(today.subtract(Duration(days: 7))),
      ));

    BlocProvider.of<HomeBloc>(context).add(HomeEvent.fetchCategories());

    return HomeScreen();
  }
}
