import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class RectangleShimmer extends StatelessWidget {
  final double width;
  final double height;
  final EdgeInsets margin;
  final double borderRadius;
  final bool isEnabled;
  final Widget child;
  final Color boxColor;
  final Color shimmerBaseColor;
  final Color shimmerHighlightColor;

  const RectangleShimmer({
    Key key,
    @required this.width,
    @required this.height,
    this.borderRadius = 0.0,
    this.margin = EdgeInsets.zero,
    this.isEnabled = true,
    this.child = const SizedBox.shrink(),
    @required this.boxColor,
    @required this.shimmerBaseColor,
    @required this.shimmerHighlightColor,
  })  : assert(shimmerBaseColor != null),
        assert(shimmerHighlightColor != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: shimmerBaseColor,
      highlightColor: shimmerHighlightColor,
      enabled: isEnabled,
      direction: ShimmerDirection.ltr,
      child: Container(
        width: width,
        height: height,
        margin: margin,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: child,
      ),
    );
  }
}
