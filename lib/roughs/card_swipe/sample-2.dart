import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardStack extends StatefulWidget {
  final double width;
  final double height;
  final int quantity;

  const CardStack({Key key, int quantity = 1, @required this.width, @required this.height})
      : this.quantity = quantity != 0 ? quantity : 1,
        super(key: key);

  @override
  _CardStackState createState() => _CardStackState();
}

class _CardStackState extends State<CardStack> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _positionAnimation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _positionAnimation = Tween(begin: 0, end: 20.0).animate(_controller);
    _controller.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: Stack(
        children: List<Widget>.generate(
          widget.quantity,
          (index) => Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: index * 20.0,
            child: Draggable(
              childWhenDragging: Container(),
              feedback: Container(color: Colors.lightBlue,),
              child: Card(
                elevation: 0.0,
                color: Color.fromARGB(
                  math.Random().nextInt(256),
                  math.Random().nextInt(256),
                  math.Random().nextInt(256),
                  math.Random().nextInt(256),
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                child: Container(
                  height: widget.height,
                  width: widget.width,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
