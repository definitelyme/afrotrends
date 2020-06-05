import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackOfCards extends StatelessWidget {
  final int total;
  final Widget child;
  final double offset;

  const StackOfCards({Key key, int num = 1, @required this.child, this.offset = 5.0})
      : this.total = num > 0 ? num : 1,
        assert(offset != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: List<Widget>.generate(
        total,
        (index) => Positioned(
//          bottom: 0,
//          top: 0,
//          left: (total - index - 1) * offset,
//          right: index * offset,
          bottom: index * offset,
          left: index * offset,
          top: (total - index - 1) * offset,
          right: (total - index - 1) * offset,
          child: Card(
            child: Container(),
          ),
        ),
      ).toList()
        ..add(
          Padding(
            padding: EdgeInsets.only(left: (total - 1) * offset, bottom: (total - 1) * offset),
            child: Card(
              child: child,
            ),
          ),
        ),
    );
  }
}
