import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/presentation/manager/detail_bloc/post/post_bloc.dart';
import 'package:afrotrends/utils/colors.dart';
import 'package:afrotrends/utils/helpers.dart';
import 'package:afrotrends/utils/navigator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html_view/flutter_html_view.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart';

class PostDetailScreen extends StatelessWidget {
  static String routeName = "/post-detail";
  final ScrollController _scrollController = ScrollController();
  final heroTag;
  final Post post;

  PostDetailScreen({Key key, this.heroTag, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var default_ = '"<img alt=\'\' src=\'https://secure.gravatar.com/avatar/7ec48a4797651ec1d678fb1e464c4d69?s=96&#038;d=mm&#038;r=g\' />"';
    String postTitle = parse(parse(post?.title?.rendered).body.text).documentElement.text;
    var userAvatar = parse(post?.customField?.user?.avatar ?? default_)?.getElementsByTagName('img')?.elementAt(0)?.attributes['src'];

    return BlocProvider<PostBloc>(
      create: (_) => PostBloc(),
      child: BlocConsumer<PostBloc, PostBlocState>(
        listener: (context, state) {},
        builder: (context, state) {
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
                  postTitle,
                  style: Get.textTheme.headline6.copyWith(fontSize: 20.0),
                  softWrap: true,
                  semanticsLabel: "Post Title",
                ),
                SizedBox(height: Get.height * 0.03),
                Hero(
                  tag: heroTag,
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
                                userAvatar,
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
                                text: post?.customField?.user?.displayName,
                                children: [
                                  TextSpan(text: " | "),
                                  TextSpan(text: post.createdAt),
                                ],
                              ),
                            ),
                          ),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: post?.customField?.featuredImage?.elementAt(0)?.sourceUrl,
                          imageBuilder: (context, imageProvider) => Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0)),
                              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                            ),
                          ),
                          placeholder: (context, url) => Center(
                            child: CupertinoActivityIndicator(),
                          ),
                          errorWidget: (context, url, error) => Icon(Icons.error, color: AtColors.accentColor),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.03),
                HtmlView(
                  data: post.content.rendered,
                  onLaunchFail: (url) {
                    print("launch failed");
                  },
                  stylingOptions: null,
                  scrollable: false,
                ),
                SizedBox(height: Get.height * 0.05),
              ],
            ),
          );
        },
      ),
    );
  }
}
