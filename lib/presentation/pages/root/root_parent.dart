import 'package:afrotrends/manager/service_provider/provider.dart';
import 'package:afrotrends/presentation/manager/detail_bloc/category/category_bloc.dart';
import 'package:afrotrends/presentation/manager/detail_bloc/post/post_bloc.dart';
import 'package:afrotrends/presentation/manager/home_bloc/home_bloc.dart';
import 'package:afrotrends/presentation/pages/root/root_child.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootParent extends StatelessWidget {
  static final routeName = "/";

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<HomeBloc>()),
        BlocProvider(create: (context) => getIt<PostBloc>()),
        BlocProvider(create: (context) => getIt<CategoryBloc>()),
      ],
      child: RootChild(),
    );
  }
}
