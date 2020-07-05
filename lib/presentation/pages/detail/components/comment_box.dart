import 'package:afrotrends/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommentBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.loose(Size(double.infinity, Get.height * 0.3)),
            child: TextFormField(
              maxLines: null,
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              textCapitalization: TextCapitalization.sentences,
              minLines: 1,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AtColors.accentColor.shade300, width: 1.5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                ),
                alignLabelWithHint: true,
                hintText: "Comment",
              ),
            ),
          ),
          SizedBox(height: Get.height * 0.02),
          TextFormField(
            maxLines: 1,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            autocorrect: false,
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AtColors.accentColor.shade300, width: 1.5),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.5),
              ),
              alignLabelWithHint: true,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              labelText: "Name *",
            ),
          ),
          SizedBox(height: Get.height * 0.02),
          TextFormField(
            maxLines: 1,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            autocorrect: false,
            textCapitalization: TextCapitalization.none,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AtColors.accentColor.shade300, width: 1.5),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.5),
              ),
              alignLabelWithHint: true,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              labelText: "Email *",
            ),
          ),
          SizedBox(height: Get.height * 0.03),
          Align(
            alignment: Alignment.centerRight,
            child: FlatButton(
              onPressed: () {},
              color: Colors.black87,
              splashColor: Colors.white30,
              highlightColor: Colors.white24,
              shape: StadiumBorder(),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              child: Text("Post Comment", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
