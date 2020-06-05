import 'package:afrotrends/blogger/app/blocs/root_bloc/bloc.dart';
import 'package:afrotrends/blogger/screens/root/root_child.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootParent extends StatelessWidget {
  static final routeName = "/";

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => RootBloc()),
      ],
      child: RootChild(),
    );
  }
}
