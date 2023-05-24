import 'package:control_style/decorated_input_border.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:getx_mvc_cli_pattern/app/util/util.dart';

import 'package:sizer/sizer.dart';

import '../config/app_colors.dart';
import '../config/global_var.dart';
import '../core/BoxDecoration.dart';
import 'Text.dart';

typedef Validator = String? Function(String? value);
typedef onChanged = String? Function(String? value);
typedef onChangeCountry = CountryCode? Function(CountryCode? value);

class InputTextFormField extends StatefulWidget {
  final String hint;
  final Widget? prefixIcon;
  final FormFieldValidator validator;
  final onChanged? onChange;
  final TextInputType textInputType;
  bool isObscure;
  bool readOnly;
  TextInputFormatter? formatter;
  final TextEditingController? controller;
  int maxLine;
  int minLine;
  int? maxLength;
  final String? showeyeicon;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final VoidCallback? onTap;
  ValueChanged<String>? onFieldSubmitted;
  AutovalidateMode? autovalidateMode;
  InputTextFormField({
    this.formatter,
    required this.isObscure,
    required this.prefixIcon,
    required this.textInputAction,
    required this.validator,
    this.maxLine = 1,
    this.minLine = 1,
    this.maxLength,
    this.onChange,
    this.focusNode,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    required this.readOnly,
    this.onTap,
    required this.textInputType,
    this.controller,
    required this.showeyeicon,
    required this.hint,
    this.onFieldSubmitted,
  });

  @override
  State<InputTextFormField> createState() => _InputTextFormFieldState();
}

class _InputTextFormFieldState extends State<InputTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        autovalidateMode: widget.autovalidateMode,
        inputFormatters: widget.formatter != null ? [widget.formatter!] : [],
        minLines: 1,
        maxLength: widget.maxLength,
        maxLines: widget.maxLine,
        readOnly: widget.readOnly,
        onTap: widget.onTap,
        obscuringCharacter: '*',
        keyboardType: widget.textInputType,
        textInputAction: widget.textInputAction,
        cursorColor: AppColors.kSecondary,
        obscureText: widget.isObscure,
        style: TextStyle(color: AppColors.kPrimary, height: 1.1),
        controller: widget.controller,
        validator: widget.validator,
        onChanged: widget.onChange,
        onFieldSubmitted: widget.onFieldSubmitted,
        decoration: InputDecoration(
          hintText: "${widget.hint}",
          contentPadding: EdgeInsets.fromLTRB(25, 12, 0, 5),
          isDense: true,
          suffixIconColor: AppColors.kGrey,
          prefixIcon: Container(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 4.0.w, right: Globals.language == "ar" ? 10.w : 2.w),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  widget.prefixIcon!,
                  SizedBox(
                    width: 1.9.w,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(gradient: AppColors.backGroundGradient),
                    height: 3.h,
                    width: 0.1.w,
                  ),
                ],
              ),
            ),
          ),
          hintStyle: TextStyle(
              color: AppColors.textGrey,
              fontSize: 15,
              fontFamily: "Poppins",
              height: 0.8,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500),
          suffixIcon: widget.showeyeicon != "show"
              ? null
              : IconButton(
                  onPressed: () {
                    setState(() {
                      if (widget.isObscure == false) {
                        widget.isObscure = true;
                      } else {
                        widget.isObscure = false;
                      }
                    });
                  },
                  icon: widget.isObscure == false
                      ? Image.asset(
                          Utils.getIconPath(
                            "show_password",
                          ),
                          color: AppColors.kPrimaryLight,
                          height: 2.h,
                          width: 2.h,
                        )
                      : Image.asset(
                          Utils.getIconPath(
                            "hide_password",
                          ),
                          color: AppColors.kPrimaryLight,
                          height: 2.h,
                          width: 2.h,
                        )),
          filled: true,
          fillColor: Colors.white,
          border: DecoratedInputBorder(
            shadow: [
              BoxShadow(
                  color: AppColors.kPrimaryLight.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 6)
            ],
            child: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(80),
              ),
            ),
          ),
          focusedBorder: DecoratedInputBorder(
            shadow: [
              BoxShadow(
                  color: AppColors.kPrimaryLight.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 6)
            ],
            child: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(80),
              ),
            ),
          ),
          enabledBorder: DecoratedInputBorder(
            shadow: [
              BoxShadow(
                  color: AppColors.kPrimaryLight.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 6)
            ],
            child: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(80),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CommentInputTextFormField extends StatefulWidget {
  final String hint;
  final Widget? prefixIcon;
  final FormFieldValidator validator;
  final onChanged? onChange;
  final TextInputType textInputType;
  bool isObscure;
  bool readOnly;
  TextInputFormatter? formatter;
  final TextEditingController? controller;
  int maxLine;
  int minLine;
  int? maxLength;
  final String? showeyeicon;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final VoidCallback? onTap;
  ValueChanged<String>? onFieldSubmitted;
  CommentInputTextFormField({
    this.formatter,
    required this.isObscure,
    required this.prefixIcon,
    required this.textInputAction,
    required this.validator,
    this.maxLine = 1,
    this.minLine = 1,
    this.maxLength,
    this.onChange,
    this.focusNode,
    required this.readOnly,
    this.onTap,
    required this.textInputType,
    this.controller,
    required this.showeyeicon,
    required this.hint,
    this.onFieldSubmitted,
  });

  @override
  State<CommentInputTextFormField> createState() =>
      _CommentInputTextFormField();
}

class _CommentInputTextFormField extends State<CommentInputTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        inputFormatters: widget.formatter != null ? [widget.formatter!] : [],
        maxLength: widget.maxLength,
        maxLines: widget.maxLine,
        readOnly: widget.readOnly,
        onTap: widget.onTap,
        obscuringCharacter: '*',
        keyboardType: widget.textInputType,
        textInputAction: widget.textInputAction,
        cursorColor: AppColors.kSecondary,
        obscureText: widget.isObscure,
        style: TextStyle(color: AppColors.kPrimary, height: 1.1),
        controller: widget.controller,
        validator: widget.validator,
        onChanged: widget.onChange,
        onFieldSubmitted: widget.onFieldSubmitted,
        decoration: InputDecoration(
          hintText: "${widget.hint}",
          contentPadding: EdgeInsets.fromLTRB(25, 12, 0, 12),
          isDense: true,
          suffixIconColor: AppColors.kGrey,
          hintStyle: TextStyle(
              color: AppColors.textGrey,
              fontSize: 15,
              fontFamily: "Poppins",
              height: 0.8,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500),
          filled: true,
          fillColor: Colors.white,
          border: DecoratedInputBorder(
            shadow: [
              BoxShadow(
                  color: AppColors.kPrimaryLight.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 6)
            ],
            child: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          ),
          focusedBorder: DecoratedInputBorder(
            shadow: [
              BoxShadow(
                  color: AppColors.kPrimaryLight.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 6)
            ],
            child: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          ),
          enabledBorder: DecoratedInputBorder(
            shadow: [
              BoxShadow(
                  color: AppColors.kPrimaryLight.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 6)
            ],
            child: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InputTextWithdrawField extends StatefulWidget {
  final String hint;
  final Widget? prefixIcon;
  final FormFieldValidator validator;
  final onChanged? onChange;
  final TextInputType textInputType;
  bool isObscure;
  final TextEditingController? controller;
  final String? showeyeicon;
  bool isValueExceeded;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  TextInputFormatter? formatter;
  InputTextWithdrawField(
      {this.formatter,
      required this.isObscure,
      required this.prefixIcon,
      required this.textInputAction,
      required this.validator,
      this.onChange,
      this.focusNode,
      required this.textInputType,
      this.controller,
      required this.showeyeicon,
      required this.hint,
      required this.isValueExceeded});

  @override
  State<InputTextWithdrawField> createState() => _InputTextWithdrawField();
}

class _InputTextWithdrawField extends State<InputTextWithdrawField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        inputFormatters: widget.formatter != null ? [widget.formatter!] : [],
        //autovalidateMode: AutovalidateMode.onUserInteraction,
        obscuringCharacter: '*',
        keyboardType: widget.textInputType,
        textInputAction: widget.textInputAction,
        cursorColor: AppColors.kSecondary,
        obscureText: widget.isObscure,
        style: TextStyle(
            color: widget.isValueExceeded
                ? AppColors.redColor
                : AppColors.kPrimary,
            height: 1.1),
        controller: widget.controller,
        validator: widget.validator,
        decoration: InputDecoration(
          hintText: "${widget.hint}",
          contentPadding: EdgeInsets.fromLTRB(
              25, 12, Globals.language == "ar" ? 10.w : 0, 12),
          isDense: true,
          suffixIconColor: AppColors.kGrey,
          prefixIcon: Container(
            child: Padding(
              padding: EdgeInsets.only(left: 4.0.w),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  widget.prefixIcon!,
                  SizedBox(
                    width: 1.9.w,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(gradient: AppColors.backGroundGradient),
                    height: 3.h,
                    width: 0.1.w,
                  ),
                  SizedBox(
                    width: 0.8.w,
                  ),
                ],
              ),
            ),
          ),
          hintStyle: TextStyle(
              color: AppColors.textGrey,
              fontSize: 15,
              fontFamily: "Poppins",
              height: 0.8,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500),
          suffixIcon: widget.showeyeicon != "show"
              ? null
              : IconButton(
                  onPressed: () {
                    setState(() {
                      if (widget.isObscure == false) {
                        widget.isObscure = true;
                      } else {
                        widget.isObscure = false;
                      }
                    });
                  },
                  icon: widget.isObscure == false
                      ? Image.asset(
                          Utils.getIconPath(
                            "show_password",
                          ),
                          color: AppColors.kPrimaryLight,
                          height: 2.h,
                          width: 2.h,
                        )
                      : Image.asset(
                          Utils.getIconPath(
                            "hide_password",
                          ),
                          color: AppColors.kPrimaryLight,
                          height: 2.h,
                          width: 2.h,
                        )),
          filled: true,
          fillColor: Colors.white,
          border: DecoratedInputBorder(
            shadow: [
              BoxShadow(
                  color: AppColors.kPrimaryLight.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 6)
            ],
            child: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(80),
              ),
            ),
          ),
          focusedBorder: DecoratedInputBorder(
            shadow: [
              BoxShadow(
                  color: AppColors.kPrimaryLight.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 6)
            ],
            child: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(80),
              ),
            ),
          ),
          enabledBorder: DecoratedInputBorder(
            shadow: [
              BoxShadow(
                  color: AppColors.kPrimaryLight.withOpacity(0.4),
                  spreadRadius: 0,
                  blurRadius: 6)
            ],
            child: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(80),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InputTextFormFieldNoIcon extends StatelessWidget {
  final String hint;

  final FormFieldValidator? validator;
  final onChanged? onChange;
  final TextInputType textInputType;
  int maxLine;
  int minLine;
  double radius;
  double hintHeight;
  bool isObscure;
  final TextEditingController? controller;
  final String? showeyeicon;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;

  InputTextFormFieldNoIcon({
    required this.isObscure,
    required this.textInputAction,
    required this.validator,
    this.onChange,
    this.maxLine = 1,
    this.minLine = 1,
    this.radius = 80,
    this.hintHeight = 0.8,
    this.focusNode,
    required this.textInputType,
    this.controller,
    required this.showeyeicon,
    required this.hint,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLine,
      minLines: minLine,
      obscuringCharacter: '*',
      keyboardType: textInputType,
      textInputAction: textInputAction,
      cursorColor: AppColors.kSecondary,
      obscureText: isObscure,
      style: TextStyle(color: AppColors.kPrimary, height: 1.5),
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        hintText: "${hint}",
        isDense: true,
        contentPadding: EdgeInsets.fromLTRB(20, 12, 12, 12),
        /* prefixIcon: Container(
          width: 0.1.w,
          height: 1.h,
        ),*/
        hintStyle: TextStyle(
            color: AppColors.textGrey,
            fontSize: 15,
            fontFamily: "Poppins",
            height: hintHeight,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
        filled: true,
        fillColor: Colors.white,
        border: DecoratedInputBorder(
          shadow: [
            BoxShadow(
                color: AppColors.kPrimaryLight.withOpacity(0.4),
                spreadRadius: 0,
                blurRadius: 6)
          ],
          child: OutlineInputBorder(
            borderSide: BorderSide(width: 0, color: Colors.transparent),
            borderRadius: BorderRadius.all(
              Radius.circular(radius),
            ),
          ),
        ),
        focusedBorder: DecoratedInputBorder(
          shadow: [
            BoxShadow(
                color: AppColors.kPrimaryLight.withOpacity(0.4),
                spreadRadius: 0,
                blurRadius: 6)
          ],
          child: OutlineInputBorder(
            borderSide: BorderSide(width: 0, color: Colors.transparent),
            borderRadius: BorderRadius.all(
              Radius.circular(radius),
            ),
          ),
        ),
        enabledBorder: DecoratedInputBorder(
          shadow: [
            BoxShadow(
                color: AppColors.kPrimaryLight.withOpacity(0.4),
                spreadRadius: 0,
                blurRadius: 6)
          ],
          child: OutlineInputBorder(
            borderSide: BorderSide(width: 0, color: Colors.transparent),
            borderRadius: BorderRadius.all(
              Radius.circular(radius),
            ),
          ),
        ),
      ),
    );
  }
}

class InputTextField extends StatefulWidget {
  final VoidCallback? onSubmit;
  final String textfieldName;
  final String hint;
  final Widget? label;
  final Widget? prefixIcon;
  final FormFieldValidator? validator;
  final onChanged? onChange;
  final TextInputType? textInputType;
  final bool readOnly;
  final bool obscureText;
  final double hintfontSize;
  final double? width;
  final double? height;
  final double? padding;
  final VoidCallback? ontap;
  final bool? isColored;
  final int? maxlines;
  final double fontSizeText;
  final double prefixIconsize;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final String? showeyeicon;
  final TextInputType? type;
  final Function()? showpin;
  final Color? cursorColor;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final Color? textColor;
  final Color? borderColor;
  final Color? hintTextColor;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final Widget? prefix;
  InputTextField(this.obscureText,
      {this.prefixIcon,
      this.prefix,
      this.textInputAction,
      this.textColor,
      this.validator,
      this.hintTextColor,
      this.hintfontSize = 12.0,
      this.prefixIconsize = 20,
      this.borderColor,
      this.width,
      this.height,
      this.onChange,
      this.textfieldName = "textfieldName",
      this.ontap,
      this.focusNode,
      this.isColored = true,
      this.textInputType,
      this.padding = 5.0,
      this.onSubmit,
      this.maxlines = 1,
      this.readOnly = false,
      this.inputFormatters,
      this.controller,
      this.fontSizeText = 12,
      this.cursorColor = AppColors.black,
      this.type,
      this.showeyeicon,
      this.showpin,
      this.fillColor,
      this.hint = '',
      this.label,
      this.borderDecoration});

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  text(String code) {
    return Text(code);
  }

  bool isObscure = true;

  FocusNode myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      onTap: widget.ontap,
      focusNode: widget.focusNode,
      name: widget.textfieldName,
      readOnly: widget.readOnly,
      maxLines: widget.maxlines,
      onSubmitted: null,
      onChanged: widget.onChange,
      inputFormatters: widget.inputFormatters,
      controller: widget.controller,
      validator: widget.validator,
      textInputAction: widget.textInputAction,
      obscureText: widget.showeyeicon != null ? isObscure : false,
      style: widget.isColored!
          ? TextStyle(
              color: widget.textColor ?? AppColors.black,
              fontSize: widget.fontSizeText.sp)
          : TextStyle(fontSize: widget.fontSizeText.sp),
      cursorColor: AppColors.kSecondary,
      keyboardType: widget.textInputType,
      //obscuringCharacter: "\u25CF",
      obscuringCharacter: "*",
      decoration: InputDecoration(
        errorMaxLines: 1,
        //errorText: '',
        errorStyle: TextStyle(height: 0),
        isDense: true,
        label: widget.label,
        prefix: widget.prefix,
        suffixIconColor: AppColors.kGrey,
        focusColor: Colors.grey,
        filled: widget.fillColor != null ? true : false,
        fillColor: widget.fillColor,
        suffixIcon: widget.showeyeicon != "show"
            ? null
            : IconButton(
                onPressed: () {
                  setState(() {
                    if (isObscure == false) {
                      isObscure = true;
                    } else {
                      isObscure = false;
                    }
                  });
                },
                icon: isObscure == false
                    ? Image.asset(
                        Utils.getIconPath(
                          "show_password",
                        ),
                        color: AppColors.kPrimaryLight,
                        height: 2.h,
                        width: 2.h,
                      )
                    : Image.asset(
                        Utils.getIconPath(
                          "hide_password",
                        ),
                        color: AppColors.kPrimaryLight,
                        height: 2.h,
                        width: 2.h,
                      )),
        enabledBorder: widget.borderDecoration ??
            UnderlineInputBorder(
              borderSide: BorderSide(
                  color: widget.borderColor ?? AppColors.dividerColor),
            ),
        focusedBorder: widget.borderDecoration ??
            UnderlineInputBorder(
              borderSide: BorderSide(
                  color: widget.borderColor ?? AppColors.dividerColor),
            ),
        hintText: widget.hint,
        errorBorder: widget.borderDecoration,
        focusedErrorBorder: widget.borderDecoration,
        hintStyle: TextStyle(
            color: widget.hintTextColor ?? AppColors.black,
            fontSize: widget.hintfontSize,
            fontFamily: "Poppins",
            height: 0.8,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}

class SearchTextInputField extends StatelessWidget {
  final VoidCallback? onPressed;
  onChanged? onChange;
  final String hint;

  final TextEditingController? controller;
  SearchTextInputField(
      {Key? key,
      this.controller,
      required this.hint,
      this.onPressed,
      this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChange,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.w),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          suffixIcon: Image.asset(
            Utils.getIconPath(
              "search_icon",
            ),
            scale: 4,
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey),
          hintText: "$hint",
          fillColor: AppColors.kWhite),
    );
  }
}



class DateInputField extends StatelessWidget {
  final String name;
  final String? hint;

  final String? Function(DateTime?)? validator;

  const DateInputField(
      {Key? key, this.hint, required this.name, this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      width: Get.width / 1.1,
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        border: Border.all(color: AppColors.greyWhite, width: 0.5),
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        boxShadow: const [
          BoxShadow(
            color: Color(0xffEFFAFF),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: FormBuilderDateTimePicker(
                name: name,
                lastDate: DateTime.now(),
                style: TextStyle(color: AppColors.textBlack, fontSize: 14.sp),
                cursorColor: Colors.black,
                minLines: 1,
                inputType: InputType.date,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(25, 0, 0, 10),
                  border: InputBorder.none,
                  hintText: hint,
                  hintStyle:
                      TextStyle(color: AppColors.appGrey, fontSize: 10.sp),
                  errorStyle: TextStyle(
                      fontSize: 8.0, color: Colors.red.withOpacity(0.5)),
                ),
                validator: validator,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: const Icon(
                Icons.calendar_today,
                color: AppColors.textBlack,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DropTextField extends StatelessWidget {
  final onChanged? onSubmit;
  final String? hint;
  final String name;
  final IconData? prefixIcon;
  final TextInputType? textInputType;
  final Validator? validator;
  final List<String>? items;
  @override
  final Key? key;

  const DropTextField({
    this.prefixIcon,
    this.textInputType,
    this.onSubmit,
    this.key,
    required this.hint,
    this.validator,
    this.items,
    required this.name,
  });

  text(String code) {
    return Text(code);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      width: Get.width / 1.1,
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        border: Border.all(color: AppColors.greyWhite, width: 0.5),
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        boxShadow: const [
          BoxShadow(
            color: Color(0xffEFFAFF),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: FormBuilderDropdown<String>(
                name: name,
                key: key,
                allowClear: true,
                onChanged: onSubmit,
                style: TextStyle(color: AppColors.textBlack, fontSize: 14.sp),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(25, 0, 5, 5),
                  border: InputBorder.none,
                  hintText: hint,
                  hintStyle:
                      TextStyle(color: AppColors.appGrey, fontSize: 10.sp),
                  errorStyle: TextStyle(
                      fontSize: 8.0, color: Colors.red.withOpacity(0.5)),
                ),
                initialValue: items![0],
                items: items!.map((String value) {
                  return DropdownMenuItem<String>(
                      value: items!.isEmpty
                          ? value
                          : items!.firstWhere((item) => item == value),
                      child: SubHeading(value, fontWeight: FontWeight.w500));
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchTextField extends StatefulWidget {
  final VoidCallback? onSubmit;
  final String textfieldName;
  final String hint;
  final IconData? prefixIcon;
  final Validator? validator;
  final Function(String?)? onChange;
  final TextInputType? textInputType;
  final bool readOnly;
  final bool obscureText;
  final double hintfontSize;
  final double? width;
  final double? height;
  final double? padding;
  final VoidCallback? ontap;
  final bool? isColored;
  final int maxlines;
  final double fontSizeText;
  final double prefixIconsize;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final String? showeyeicon;
  final TextInputType? type;
  final Function()? showpin;
  final Color? cursorColor;
  final Color? borderColor;
  final TextAlign? textAlign;
  final Color? fillColor;
  final Color? hintColor;
  final Widget? prefix;
  final bool? enabled;
  final String? prefixPath;
  final FocusNode? focus;

  SearchTextField(
    this.obscureText, {
    this.prefixPath,
    this.prefixIcon,
    this.borderColor,
    this.validator,
    this.hintfontSize = 12.0,
    this.prefixIconsize = 20,
    this.width,
    this.height,
    this.onChange,
    this.textfieldName = "textfieldName",
    this.ontap,
    this.isColored = false,
    this.textInputType,
    this.padding = 5.0,
    this.onSubmit,
    this.maxlines = 1,
    this.readOnly = false,
    this.inputFormatters,
    this.controller,
    this.fontSizeText = 12,
    this.cursorColor = AppColors.black,
    this.type,
    this.enabled,
    this.showeyeicon,
    this.showpin,
    this.textAlign = TextAlign.start,
    this.hint = '',
    this.fillColor,
    this.prefix,
    this.hintColor,
    this.focus,
  });

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  text(String code) {
    return Text(code);
  }

  bool isObscure = true;

  FocusNode myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      onTap: widget.ontap,
      textAlign: widget.textAlign!,
      name: widget.textfieldName,
      readOnly: widget.readOnly,
      maxLines: widget.maxlines,
      focusNode: widget.focus,
      enabled: widget.enabled ?? true,
      onChanged: widget.onChange,
      inputFormatters: widget.inputFormatters,
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.showeyeicon == "show" ? isObscure : false,
      style: widget.isColored!
          ? const TextStyle(
              color: AppColors.black,
              fontSize: 14,
            )
          : TextStyle(
              fontSize: widget.fontSizeText.sp,
              height: 1.6,
              color: AppColors.textBlue,
            ),
      minLines: 1,
      cursorColor: widget.isColored! ? AppColors.textBlue : AppColors.textBlue,
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
        suffixIconColor: AppColors.kGrey, filled: true,
        fillColor: widget.fillColor,
        focusColor: Colors.grey,
        // prefixIcon: Icon(Icons.calendar_month_outlined,size: 10.h,),
        // prefix: Image.asset( widget.prefixPath??""),
        /* suffixIcon: widget.showeyeicon == null
            ? const SizedBox()
            : IconButton(
            onPressed: () {
              setState(() {
                if (isObscure == false) {
                  isObscure = true;
                } else {
                  isObscure = false;
                }
              });
            },
            icon: isObscure == false
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off)),*/
        enabledBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(color: widget.borderColor ?? AppColors.appGrey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(color: widget.borderColor ?? AppColors.appGrey),
        ),
        hintText: widget.hint,
        hintStyle: TextStyle(
          color: widget.hintColor ?? AppColors.textBlue,
          fontSize: widget.hintfontSize.sp,
          height: 1.4,
        ),
      ),
    );
  }
}

class DropDownProfile extends StatelessWidget {
  final onChanged? onSubmit;
  final String? hint;

  final List<String>? items;
  final String? value;

  const DropDownProfile({
    this.onSubmit,
    this.value,
    required this.hint,
    this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 7.h,
      width: 90.w,
      decoration:
          MyBoxDecoration.roundCircularDropDownRadiusWithBoxShadowDecoration(
        color: AppColors.kWhite,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        child: DropdownButton<String>(
          elevation: 0,
          items: items!.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child:
                  SubHeading(value, fontSize: 10, color: AppColors.textBlack),
            );
          }).toList(),
          value: value,
          underline: const SizedBox(),
          hint: SubHeading(hint!, fontSize: 10, color: AppColors.kGrey),
          isExpanded: true,
          onChanged: onSubmit,
        ),
      ),
    );
  }
}

class CountryCodeInputTextField extends StatelessWidget {
  final VoidCallback? onSubmit;
  final String? hint;
  final IconData? prefixIcon;
  final Validator? validator;
  final TextInputType? textInputType;
  final bool readOnly;
  final bool obscureText;
  final double hintfontSize;
  final double? width;
  final double? height;
  final double? padding;
  final bool? isColored;
  final TextEditingController? controller;
  final onChangeCountry? function;
  final VoidCallback? ontap;

  CountryCodeInputTextField(
    this.obscureText, {
    this.prefixIcon,
    this.validator,
    this.function,
    this.hintfontSize = 12.0,
    this.width,
    this.height,
    this.isColored = true,
    this.textInputType,
    this.padding = 5.0,
    this.onSubmit,
    this.readOnly = false,
    this.controller,
    required this.hint,
    this.ontap,
  });

  text(String code) {
    return Text(code);
  }

  FocusNode myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding!.w),
      child: FormBuilderTextField(
        // focusNode: myFocusNode,
        onTap: ontap,
        name: 'textfield',
        readOnly: readOnly,
        controller: controller,

        validator: validator,
        obscureText: obscureText,
        style: isColored!
            ? const TextStyle(color: AppColors.black, fontSize: 14)
            : null,
        cursorColor: isColored! ? AppColors.black : null,
        minLines: 1,
        keyboardType: textInputType,

        decoration: InputDecoration(
          suffixIconColor: AppColors.kGrey,
          focusColor: Colors.grey,
          prefixIcon: CountryCodePicker(
            padding: EdgeInsets.zero,
            // onChanged: function,
            // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
            initialSelection: 'PK',
            favorite: const ['+92', 'PK'],

            // optional. Shows only country name and flag
            showCountryOnly: false,
            // optional. Shows only country name and flag when popup is closed.
            showOnlyCountryWhenClosed: false,
            // optional. aligns the flag and the Text left
            alignLeft: false,
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.appGrey),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.appGrey),
          ),
        ),
      ),
    );
  }
}

class WhitelistingTextInputFormatter extends TextInputFormatter {
  static final _reg = RegExp("[0-9]");

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    TextEditingValue? def;
    print(_reg.hasMatch(newValue.text));
    print(newValue.text);
    return _reg.hasMatch(newValue.text)
        ? newValue
        : (newValue.text.isEmpty)
            ? def!
            : oldValue;
  }
}

BoxDecoration postBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(8),
  color: AppColors.kBoxGrey2,
  border: Border.all(width: 0.5, color: Color(0xff737373)),
);
