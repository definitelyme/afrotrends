import 'package:afrotrends/features/domain/api_client/exports.dart';
import 'package:afrotrends/presentation/manager/home_bloc/home_bloc.dart';
import 'package:afrotrends/utils/colors.dart';
import 'package:afrotrends/utils/helpers.dart';
import 'package:afrotrends/widgets/horizontal_list.dart';
import 'package:afrotrends/widgets/shimmers/shimmer_right_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class EntertainmentWidget extends StatefulWidget {
  static final _id = 5;
  static final name = "Entertainment";

  @override
  _EntertainmentWidgetState createState() => _EntertainmentWidgetState();
}

class _EntertainmentWidgetState extends State<EntertainmentWidget> with AutomaticKeepAliveClientMixin {
  HomeBloc _bloc;
  int _page = 1;

  @override
  bool get wantKeepAlive => true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = BlocProvider.of<HomeBloc>(context);
    if (_bloc.state.entertainmentPosts == null)
      _bloc.add(HomeEvent.fetchEntertainments(
          queryBuilder: QueryBuilder(
        taxonomy: TCategory(EntertainmentWidget._id),
        perPage: MkHelpers.entertainmentsPerPage,
      )));
  }

  int _calculateListItemCount() {
    if (_bloc.state.endOfEntertainmentPosts != null) {
      if (_bloc.state.endOfEntertainmentPosts) return _bloc.state.entertainmentPosts.length;
      return _bloc.state.entertainmentPosts.length + MkHelpers.entertainmentsPerPage;
    }
    return _bloc.state.entertainmentPosts.length;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      if (_bloc.state.entertainmentPosts == null)
        return ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: defaultEdgeSpacing(context, top: Get.height * 0.02),
          physics: defaultScrollPhysics(),
          itemCount: ((Get.width) / (Get.width * 0.1)).ceil(),
          itemBuilder: (context, index) => ShimmerRightContent(
            width: Get.width,
            height: Get.height * 0.17,
            margin: EdgeInsets.only(bottom: Get.width * 0.03, right: Get.width * 0.04),
            shimmerBaseColor: Colors.grey[300],
            shimmerHighlightColor: Colors.grey[100],
            boxColor: Colors.black,
            borderRadius: 8.0,
          ),
        );

      return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: defaultEdgeSpacing(context, right: 0.0, top: Get.height * 0.02),
        physics: defaultScrollPhysics(),
        itemCount: _calculateListItemCount() + 1,
        itemBuilder: (_, index) {
          if (index == _calculateListItemCount()) return _loadMoreButton(_bloc?.state?.endOfEntertainmentPosts ?? false);
          return AtHorizontalList(post: state.entertainmentPosts.elementAt(index), tagPrefix: "entertainment");
        },
      );
    });
  }

  Widget _loadMoreButton(bool isAtMax) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: Get.width * 0.08),
        Visibility(
          visible: _bloc.state.isFetchingMore,
          child: CupertinoActivityIndicator(),
        ),
        SizedBox(width: Get.width * 0.05),
        Visibility(
          visible: !isAtMax && !_bloc.state.isFetchingMore,
          child: RaisedButton(
            onPressed: () => _bloc.add(HomeEvent.fetchEntertainments(
                queryBuilder: QueryBuilder(
              taxonomy: TCategory(EntertainmentWidget._id),
              perPage: MkHelpers.entertainmentsPerPage,
              page: ++_page,
            ))),
            child: Text(
              "Load more..",
              style: Get.textTheme.button.copyWith(color: Colors.white),
            ),
            elevation: 0.0,
            highlightElevation: 1.0,
            color: AtColors.accentColor.shade400,
            highlightColor: Colors.white12,
            splashColor: Colors.white30,
            shape: StadiumBorder(),
          ),
        ),
      ],
    );
  }
}
