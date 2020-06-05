import 'package:afrotrends/core/utils/app_icons_icons.dart';
import 'package:flutter/material.dart';

class Destination {
  final String title;
  final IconData selectedIcon;
  final IconData unSelectedIcon;

  Destination({
    this.title,
    this.selectedIcon,
    this.unSelectedIcon,
  });

  static final List<Destination> destinations = <Destination>[
    Destination(
      title: "Home",
      selectedIcon: AppIcons.home_filled,
      unSelectedIcon: AppIcons.home_outline,
    ),
    Destination(
      title: "Category",
      selectedIcon: AppIcons.category_filled,
      unSelectedIcon: AppIcons.category_outline,
    ),
    Destination(
      title: "Saved",
      selectedIcon: AppIcons.bookmark_filled,
      unSelectedIcon: AppIcons.bookmark_outline,
    ),
    Destination(
      title: "Account",
      selectedIcon: AppIcons.user_filled,
      unSelectedIcon: AppIcons.user_outline,
    ),
  ];
}
