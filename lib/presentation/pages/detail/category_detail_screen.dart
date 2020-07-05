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
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart';

class CategoryDetailScreen extends StatelessWidget {
  final Taxonomy category;

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

            return Container(
              margin: defaultEdgeSpacing(context, top: Get.height * 0.03),
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 0.5,
                  height: Get.height,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.vertical,
                  enableInfiniteScroll: false,
                  pageViewKey: PageStorageKey(ValueKey(category.name)),
                  scrollPhysics: defaultScrollPhysics(),
                ),
                items: _bloc.state.posts.map<Widget>((post) => _relatedPostsBuilder(post)).toList(),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _relatedPostsBuilder(Post post) {
    String postTitle = parse(parse(post?.title?.rendered).body.text).documentElement.text;

    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: post?.customField?.featuredImage?.first?.sourceUrl,
                imageBuilder: (context, imageProvider) => Material(
                  child: InkWell(
                    onTap: () => navigateToPostDetail("${category.name}-detail-${post.id}", post),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(defaultCardRadius()),
                        image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                placeholder: (context, url) => Center(
                  child: CupertinoActivityIndicator(),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error, color: AtColors.accentColor),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  child: AutoSizeText(
                    postTitle,
                    minFontSize: 17.0,
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
