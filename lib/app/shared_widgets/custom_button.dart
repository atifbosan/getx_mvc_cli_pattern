import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../config/app_colors.dart';
class CustomButton2 extends StatefulWidget {
  final double? height;
  final double? width;
  final  hMargin;
  final Function()? onpress;
  final String? title;
  final Widget? titleWidget;
  final Color? color;
  final Color? fontColor;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? borderRadius;
  final Border? border;
  bool? isEnabled;
  CustomButton2(
      {Key? key,this.border,
      this.height,
      this.width,
      @required this.onpress,
      this.hMargin = 0.0,
      this.title,
      this.color,
      this.fontColor,
      this.fontFamily,
      this.fontWeight,
      this.isEnabled = true,
      this.fontSize = 11,this.borderRadius=10.0,
      this.titleWidget})
      : super(key: key);

  @override
  _CustomButton2State createState() => _CustomButton2State();
}

class _CustomButton2State extends State<CustomButton2> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      return InkWell(
        onTap: widget.onpress,
        child: Container(
          child: Center(
            child: widget.titleWidget ??
                Text(
                  '${widget.title}',
                  style: TextStyle(
                    fontSize: widget.fontSize!.sp,
                    color: widget.fontColor ?? Colors.white,
                    fontWeight: widget.fontWeight??FontWeight.w500,
                    fontFamily: widget.fontFamily??'Epilogue-semibold',
                  ),
                ),
          ),
          margin: widget.hMargin != null
              ? EdgeInsets.symmetric(horizontal: widget.hMargin)
              : EdgeInsets.zero,
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0,1),color: AppColors.kBoxGrey,blurRadius: 4)],
              borderRadius: BorderRadius.circular(widget.borderRadius!),
              border: widget.border,
              color: widget.color ?? Colors.blue),
        ),
      );
    });
  }
}


