import 'package:afrotrends/blogger/app/blocs/root_bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SavedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RootBloc, RootState>(
      builder: (context, state) {
        return Scaffold(
          body: ListView.builder(
            shrinkWrap: true,
            controller: context.bloc<RootBloc>().state.scrollController,
            itemCount: 500,
            itemBuilder: (context, index) => Container(
              child: Text("Welcome to Saved ${index - 10}"),
            ),
          ),
        );
      },
    );
  }
}
