import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget showErrorText(String value) {
  return value != "null"
      ? Padding(
          padding: EdgeInsets.only(left: 5.w, right: 7.w, top: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                value != "null" ? "${value}" : "",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        )
      : Container();
}
