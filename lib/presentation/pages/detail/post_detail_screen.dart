import 'package:afrotrends/features/data/remote/models/comment/exports_comment.dart';
import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/manager/service_provider/provider.dart';
import 'package:afrotrends/presentation/manager/detail_bloc/post/post_bloc.dart';
import 'package:afrotrends/utils/colors.dart';
import 'package:afrotrends/utils/helpers.dart';
import 'package:afrotrends/utils/navigator.dart';
import 'package:afrotrends/widgets/comment_bubble.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html_view/flutter_html_view.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';

class PostDetailScreen extends StatelessWidget {
  static String routeName = "/post-detail";
  final ScrollController _scrollController = ScrollController();
  final heroTag;
  final Post post;

  PostDetailScreen({Key key, this.heroTag, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String postTitle = parse(parse(post?.title?.rendered).body.text).documentElement.text;
    String userAvatar = parse(post?.customField?.user?.avatar)?.getElementsByTagName('img')?.elementAt(0)?.attributes['src'];

    return BlocProvider<PostBloc>(
      create: (_) => getIt<PostBloc>()..add(PostBlocEvent.fetchPostComments(post)),
      child: Scaffold(
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
        body: BlocConsumer<PostBloc, PostBlocState>(
            listener: (context, state) {},
            builder: (context, state) {
              return ListView(
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
                            child: Material(
                              color: Colors.transparent,
                              elevation: 0.0,
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
                                      TextSpan(text: "${DateFormat.yMMMd().format(DateTime.parse(post.createdAt))}"),
                                    ],
                                  ),
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
                  SizedBox(height: Get.height * 0.04),
                  Container(
                    padding: defaultEdgeSpacing(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Comments",
                            style: Get.textTheme.subtitle1.copyWith(
                              color: Colors.black87,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: Get.height * 0.02),
                  Visibility(
                    visible: context.bloc<PostBloc>().state.comments != null && context.bloc<PostBloc>().state.comments.isNotEmpty,
                    replacement: AutoSizeText(
                      "Be the first to comment.",
                      softWrap: true,
                      style: Get.textTheme.bodyText2.copyWith(color: Colors.grey.shade600),
                    ),
                    child: Column(
                      children: [
                        if (context.bloc<PostBloc>().state.comments != null)
                          for (Comment item in context.bloc<PostBloc>().state.comments)
                            Column(
                              children: [
                                CommentBubble(comment: item),
                                SizedBox(height: Get.height * 0.02),
                              ],
                            ),
                      ],
                    ),
                  ),
                  SizedBox(height: Get.height * 0.02),
                ],
              );
            }),
      ),
    );
  }
}
