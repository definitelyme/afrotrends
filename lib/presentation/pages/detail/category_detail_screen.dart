import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/features/data/remote/models/taxonomy/exports_taxonomy.dart';
import 'package:afrotrends/manager/service_provider/provider.dart';
import 'package:afrotrends/presentation/manager/detail_bloc/category/category_bloc.dart';
import 'package:afrotrends/utils/colors.dart';
import 'package:afrotrends/utils/helpers.dart';
import 'package:afrotrends/utils/navigator.dart';
import 'package:afrotrends/widgets/shimmers/shimmer_bottom_content.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';

class CategoryDetailScreen extends StatelessWidget {
  final Taxonomy category;
  final double _radius = 8.0;

  const CategoryDetailScreen({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryBloc>(
      create: (_) => getIt<CategoryBloc>()..add(CategoryEvent.fetchRelatedPosts(category)),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: AutoSizeText(category.name, style: Get.textTheme.headline6),
          leading: IconButton(
            key: ValueKey("post-back-button"),
            icon: Icon(Icons.keyboard_backspace),
            color: Colors.black,
            tooltip: "Back",
            onPressed: () => navigateBack(),
          ),
        ),
        body: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            // ignore: close_sinks
            final _bloc = context.bloc<CategoryBloc>();

            if (_bloc.state.posts == null)
              return ListView.separated(
                  scrollDirection: Axis.vertical,
                  padding: defaultEdgeSpacing(context),
                  itemCount: ((Get.height) / (Get.height * 0.2)).ceil(),
                  physics: defaultScrollPhysics(),
                  separatorBuilder: (_, index) => SizedBox(height: Get.height * 0.03),
                  itemBuilder: (context, index) {
                    return ShimmerBottomContent(
                      height: Get.height * 0.25,
                      margin: EdgeInsets.only(right: Get.width * 0.06),
                      shimmerBaseColor: Colors.grey[300],
                      shimmerHighlightColor: Colors.grey[100],
                      boxColor: Colors.black,
                      borderRadius: 8.0,
                    );
                  });

            return ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              controller: ScrollController(),
              physics: BouncingScrollPhysics(),
              padding: defaultEdgeSpacing(context),
              itemCount: _bloc.state.posts.length,
              itemBuilder: (_, i) => _relatedPostsBuilder(_bloc.state.posts.elementAt(i)),
              separatorBuilder: (_, i) {
                if (i != 0 && i % 3 == 0) {
                  // Place your ads here
                  return SizedBox.shrink();
                }
                return SizedBox(height: Get.height * 0.02);
              },
//              children: _bloc.state.posts.map((post) => _relatedPostsBuilder(post)).toList(),
            );
          },
        ),
      ),
    );
  }

  Widget _relatedPostsBuilder(Post post) {
    String postTitle = parse(parse(post?.title?.rendered).body.text).documentElement.text;
    String postBody = parse(parse(post?.content?.rendered).body.text).documentElement.text;
//    onTap: () => navigateToPostDetail("${category.name}-detail-${post.id}", post),

    return Container(
      height: Get.height * 0.43,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(_radius), color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.grey[300], offset: Offset(3, 3), blurRadius: 2.0),
      ]),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: CachedNetworkImage(
              imageUrl: post?.customField?.featuredImage?.first?.sourceUrl,
              color: Colors.grey,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(_radius), topRight: Radius.circular(_radius)),
                  image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                ),
              ),
              placeholder: (context, url) => Center(
                child: CupertinoActivityIndicator(),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error, color: AtColors.accentColor),
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Column(
                children: [
                  Flexible(
                    flex: 6,
                    child: AutoSizeText(
                      postTitle,
                      softWrap: true,
                      maxLines: 2,
                      minFontSize: 14.0,
                      maxFontSize: 16.0,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: Get.textTheme.headline5.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.01),
                  Flexible(
                    flex: 8,
                    child: AutoSizeText(
                      postBody,
                      softWrap: true,
                      maxLines: 3,
                      minFontSize: 13.0,
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: Get.height * 0.01),
                  Flexible(
                    flex: 3,
                    child: Row(
                      children: [
                        AutoSizeText(
                          "${DateFormat.yMMMd().format(DateTime.parse(post.createdAt))}",
                          maxFontSize: 13.0,
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("4"),
                            Icon(Icons.mode_comment, color: Colors.grey[500]),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
