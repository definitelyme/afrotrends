import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void navigateAndReplace({
  @required String routeName,
  dynamic arguments,
  dynamic result,
}) =>
    navigator.pushReplacementNamed(routeName, arguments: arguments, result: result);

void navigateAndPush({
  @required String routeName,
  dynamic arguments,
}) =>
    navigator.pushNamed(
      routeName,
      arguments: arguments,
    );

void navigatePopAndPush({
  @required String routeName,
  dynamic arguments,
}) =>
    navigator.popAndPushNamed(
      routeName,
      arguments: arguments,
    );

void navigateAndPopUntil({
  @required String routeName,
  @required String popUntilRouteName,
  dynamic arguments,
}) =>
    navigator.pushNamedAndRemoveUntil(
      routeName,
      ModalRoute.withName(popUntilRouteName),
      arguments: arguments,
    );

void navigatePopAllBelow() => navigator.popUntil((route) => false);

void navigateBack() => navigator.pop();
