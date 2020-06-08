import 'dart:math' as math;

import 'package:afrotrends/blogger/app/blocs/post_screen_bloc/bloc.dart';
import 'package:afrotrends/blogger/app/blocs/post_screen_bloc/post_screen_event.dart';
import 'package:afrotrends/blogger/domain/entities/post.dart';
import 'package:afrotrends/blogger/domain/routeArgs/model_route_arg.dart';
import 'package:afrotrends/core/navigator.dart';
import 'package:afrotrends/core/utils/app_colors.dart';
import 'package:afrotrends/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html_view/flutter_html_view.dart';
import 'package:get/get.dart';

class PostScreen extends StatelessWidget {
  static String routeName = "/post-detail";
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    ModelRouteArg routeArg = ModalRoute.of(context).settings.arguments;
    Post post = routeArg.model;

    return BlocProvider<PostScreenBloc>(
      create: (_) => PostScreenBloc(),
      child: BlocConsumer<PostScreenBloc, PostScreenState>(
        listener: (context, state) {},
        builder: (context, state) {
          _scrollController.addListener(() {
            var isNavVisible = context.bloc<PostScreenBloc>().state.isNavVisible;

            if (_scrollController.position.userScrollDirection == ScrollDirection.reverse && _scrollController.offset > kBottomNavigationBarHeight) if (isNavVisible)
              context.bloc<PostScreenBloc>().add(PostScreenEvent.onScroll(false));
            if (_scrollController.position.userScrollDirection == ScrollDirection.forward || _scrollController.offset == 0.0) if (!isNavVisible)
              context.bloc<PostScreenBloc>().add(PostScreenEvent.onScroll(true));
          });

          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                key: ValueKey("post-back-button"),
                icon: Icon(Icons.keyboard_backspace),
                color: Colors.black,
                tooltip: "Back",
                onPressed: () => navigateBack(),
              ),
            ),
            body: ListView(
              key: ValueKey("post-screen-listView"),
              scrollDirection: Axis.vertical,
              controller: _scrollController,
              padding: defaultEdgeSpacing(context),
              children: [
                Text(
                  post.title,
                  style: Get.textTheme.headline6.copyWith(fontSize: 20.0),
                  softWrap: true,
                  semanticsLabel: "Post Title",
                ),
                SizedBox(height: Get.height * 0.03),
                Hero(
                  tag: routeArg.heroTag,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(defaultCardRadius()),
                    child: Container(
                      height: Get.height * 0.35,
                      child: GridTile(
                        footer: Container(
                          color: Colors.black45,
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(6.0),
                              child: Image.network(
                                post.author.avatarUrl,
                                height: 40,
                                width: 40,
                              ),
                            ),
                            title: Text(
                              "Posted by",
                              style: Get.textTheme.subtitle1.copyWith(color: Colors.white70),
                            ),
                            subtitle: RichText(
                              text: TextSpan(
                                text: post.author.name,
                                children: [
                                  TextSpan(text: " | "),
                                  TextSpan(text: post.createdAt),
                                ],
                              ),
                            ),
                          ),
                        ),
                        child: Image(
                          width: double.infinity,
                          image: NetworkImage(post.media.sourceUrl),
                          fit: BoxFit.cover,
                          semanticLabel: "Post Image",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.03),
                HtmlView(
                  data: post.content,
                  onLaunchFail: (url) {
                    print("launch failed");
                  },
                  stylingOptions: null,
                  scrollable: false,
                ),
                SizedBox(height: Get.height * 0.05),
              ],
            ),
            bottomSheet: _postActions(context),
          );
        },
      ),
    );
  }

  Widget _postActions(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 40),
      height: context.bloc<PostScreenBloc>().state.isNavVisible ? kBottomNavigationBarHeight : 0.0,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton.icon(
                    key: ValueKey("post-comment-key"),
                    onPressed: () {},
                    icon: Icon(
                      Icons.mode_edit,
                      color: AppColors.oylexAccent.shade300,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 7.0),
                    label: Text(
                      "Add a Comment...",
                      style: Get.textTheme.subtitle2.copyWith(
                        color: AppColors.oylexAccent.shade200,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: AppColors.oylexAccent.shade100),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: AppColors.oylexPrimary.shade300),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                      height: 40,
                      child: IconButton(
                        key: ValueKey("post-forward-key"),
                        icon: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                          child: Icon(
                            Icons.reply_all,
                            color: AppColors.oylexPrimary.shade700,
                          ),
                        ),
                        tooltip: "Forward",
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: AppColors.oylexAccent.shade300),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                      height: 40,
                      child: IconButton(
                        key: ValueKey("post-like-key"),
                        icon: Icon(
                          Icons.thumb_up,
                          color: AppColors.oylexAccent.shade700,
                        ),
                        tooltip: "Like",
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: AppColors.oylexPrimaryDark.shade200),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                      height: 40,
                      child: IconButton(
                        key: ValueKey("post-notify-key"),
                        icon: Icon(
                          Icons.notifications,
                          color: AppColors.oylexPrimaryDark.shade400,
                        ),
                        tooltip: "Turn on notification",
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
