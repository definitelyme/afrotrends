import 'dart:io';

import 'package:afrotrends/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MkCircularProgressIndicator extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final double strokeWidth;

  MkCircularProgressIndicator({
    this.width,
    this.height,
    this.color = AtColors.accentColor,
    this.strokeWidth = 4.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: _progressIndicator(),
    );
  }

  Widget _progressIndicator() {
    if (Platform.isIOS) {
      return CupertinoActivityIndicator();
    }
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation(color),
      strokeWidth: strokeWidth,
      semanticsLabel: "Progress Indicator",
      semanticsValue: "Loading..",
    );
  }
}
