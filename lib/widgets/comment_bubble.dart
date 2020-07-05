import 'package:afrotrends/features/data/remote/models/comment/exports_comment.dart';
import 'package:afrotrends/utils/helpers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';

class CommentBubble extends StatelessWidget {
  final Comment comment;

  const CommentBubble({Key key, @required this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String commentBody = parse(parse(comment?.content?.rendered).body.text).documentElement.text;
//    String commentBody = "Some major comment by me";

    return Align(
        alignment: Alignment.centerRight,
        child: Stack(children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            decoration: BoxDecoration(
              color: Color(0xFF486993),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("$DEFAULTS_IMAGES_FOLDER/default-user-1.jpg"),
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(width: Get.width * 0.04),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        commentBody,
                        style: TextStyle(color: Colors.white, fontSize: 14.0),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: AutoSizeText(
                                "- ${comment?.authorName}",
                                maxFontSize: 15.0,
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: AutoSizeText.rich(
                                TextSpan(
                                  text: "${DateFormat.MMMd().format(DateTime.parse(comment?.createdAt))}, ",
                                  style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                                  children: [
                                    TextSpan(
                                      text: "${DateFormat.jm().format(DateTime.parse(comment?.createdAt))}",
                                      style: TextStyle(fontSize: 13.0),
                                    ),
                                  ],
                                ),
                                maxFontSize: 14.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: CustomPaint(
                painter: _CommentBubbleTriangle(),
              ))
        ]));
  }
}

class _CommentBubbleTriangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Color(0xFF486993);

    var path = Path();
    path.lineTo(-15, 0);
    path.lineTo(0, -15);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
