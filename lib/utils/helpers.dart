import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const IMAGES_FOLDER = "assets/images";
const DEV_IMAGES_FOLDER = "$IMAGES_FOLDER/dev";
const CATEGORIES_IMAGES_FOLDER = "$DEV_IMAGES_FOLDER/categories";

EdgeInsetsGeometry defaultEdgeSpacing(BuildContext context, {double left, double top, double right, double bottom}) =>
    EdgeInsets.fromLTRB(left ?? deviceLeftMargin(context), top ?? 0.0, right ?? deviceLeftMargin(context), bottom ?? 0.0);

double deviceMargin(BuildContext context) => Get.width * 0.04;

double deviceLeftMargin(BuildContext context) => deviceMargin(context);

double deviceRightMargin(BuildContext context) => deviceMargin(context);

// GoogleFonts.workSansTextTheme();
// GoogleFonts.philosopherTextTheme();
//TextTheme defaultTextTheme({TextTheme textTheme}) => GoogleFonts.saralaTextTheme(textTheme);

ScrollPhysics defaultScrollPhysics({ScrollPhysics parent}) => BouncingScrollPhysics(parent: parent);

ScrollPhysics defaultHorizontalScrollPhysics({ScrollPhysics parent}) => BouncingScrollPhysics(parent: parent);

double defaultCardRadius() => 16.0;
