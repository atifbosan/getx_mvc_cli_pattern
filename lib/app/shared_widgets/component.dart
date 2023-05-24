import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../config/app_colors.dart';
import '../core/BoxDecoration.dart';
import '../util/util.dart';
import 'Text.dart';
import 'Textfeld.dart';

class AppWidgets {
  static Widget searchPageSearchField(
      {onTap,
      onChange,
      backgroundColor,
      hint,
      readOnly,
      controller,
      borderColor,
      hintColor,
      enabled,
      fillColor,
      focusNode,
      height}) {
    return Container(
      height: height ?? 5.4.h,
      padding: EdgeInsets.only(right: 8),
      decoration: MyBoxDecoration.roundCircularRadiusWithOutBoxShadowDecoration(
          color: backgroundColor),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 3.w,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Image.asset(
              Utils.getIconPath("search-icon"),
              height: 3.4.w,
              color: AppColors.textBlue,
            ),
          ),
          SizedBox(
            width: 1.w,
          ),
          Flexible(
              fit: FlexFit.loose,
              child: SizedBox(
                height: 3.8.h,
                child: SearchTextField(
                  readOnly ?? false,
                  hint: hint,
                  borderColor: borderColor,
                  ontap: onTap,
                  enabled: enabled,
                  fontSizeText: 10,
                  fillColor: fillColor,
                  hintfontSize: 10,
                  focus: focusNode,
                  controller: controller,
                  onChange: onChange,
                  hintColor: hintColor,
                ),
              )),
        ],
      ),
    );
  }

  static Widget profileNameWithImage(
      {String? title,
      subTitle,
      imageUrl,
      imageSize,
      titleColor,
      subTitleColor,
      isChatPage = false,
      useInitials = false,
      isPlaylist = false}) {
    return Row(
      //mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: imageSize ?? 12.8.w,
          width: imageSize ?? 12.8.w,
          child: GetUtils.isURL(imageUrl ?? "")
              ? Center(
                  child: useInitials
                      ? SubHeading(
                          title!.substring(0, 1),
                          fontSize: 16,
                          color: AppColors.kWhite,
                          height: 1.5,
                        )
                      : AppWidgets.profilePicWidget(
                          onTap: null, imageUrl: imageUrl),
                )
              : useInitials
                  ? Center(
                      child: useInitials
                          ? SubHeading(
                              title!.substring(0, 1),
                              fontSize: 16,
                              color: AppColors.kWhite,
                              height: 1.5,
                            )
                          : AppWidgets.profilePicWidget(
                              onTap: null, imageUrl: imageUrl),
                    )
                  : null,
          decoration: BoxDecoration(
              color:
                  useInitials ? AppColors.kSecondary : AppColors.kTransparent,
              shape: BoxShape.circle,
              image: useInitials
                  ? null
                  : DecorationImage(
                      image: AssetImage(
                        Utils.getImagePath("no-profile"),
                      ),
                      fit: BoxFit.fill)),
        ),
        SizedBox(
          width: 2.5.w,
        ),
        SizedBox(
          width: isChatPage ? 54.w : 58.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Visibility(
                    visible: (isChatPage == true),
                    child: SubHeading(
                      title ?? "Kathy Devons",
                      fontFamily: "Epilogue-bold",
                      fontWeight: FontWeight.w700,
                      maxLines: 2,
                      color: titleColor ?? AppColors.black,
                      fontSize: 18,
                      overflow: TextOverflow.ellipsis,
                    )),
              ),
              Visibility(
                visible: !(isChatPage == true),
                child: SubHeading(
                  title ?? "Kathy Devons",
                  fontFamily: "Roboto-Medium",
                  color: titleColor ?? AppColors.black,
                  fontSize: 12,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Visibility(
                visible: isChatPage == false,
                child: SizedBox(
                  height: isPlaylist ? 0.5.w : 2.w,
                ),
              ),
              Visibility(
                visible: !(isChatPage == true),
                child: RegularText(
                  subTitle ?? "variations-ignore".tr,
                  fontFamily: "Roboto-regular",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  color: subTitleColor ?? AppColors.textBlack,
                  fontSize: 8,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  static Widget profileNameWithImage2(
      {String? title,
      subTitle,
      imageUrl,
      imageSize,
      titleColor,
      subTitleColor,
      isChatPage = false,
      useInitials = false,
      isPlaylist = false}) {
    return Row(
      //mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: imageSize ?? 12.8.w,
          width: imageSize ?? 12.8.w,
          child: GetUtils.isURL(imageUrl ?? "")
              ? Center(
                  child: useInitials
                      ? SubHeading(
                          title!.substring(0, 1),
                          fontSize: 16,
                          color: AppColors.kWhite,
                          height: 1.5,
                        )
                      : AppWidgets.profilePicWidget(
                          onTap: null, imageUrl: imageUrl),
                )
              : useInitials
                  ? Center(
                      child: useInitials
                          ? SubHeading(
                              title!.substring(0, 1),
                              fontSize: 16,
                              color: AppColors.kWhite,
                              height: 1.5,
                            )
                          : AppWidgets.profilePicWidget(
                              onTap: null, imageUrl: imageUrl),
                    )
                  : null,
          decoration: BoxDecoration(
              color:
                  useInitials ? AppColors.kSecondary : AppColors.kTransparent,
              shape: BoxShape.circle,
              image: useInitials
                  ? null
                  : DecorationImage(
                      image: AssetImage(
                        Utils.getImagePath("no-profile"),
                      ),
                      fit: BoxFit.fill)),
        ),
        SizedBox(
          width: 2.5.w,
        ),
        Row(mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: SizedBox(
                // width: isChatPage ? 52.w : 58.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Visibility(
                          visible: (isChatPage == true),
                          child: SubHeading(
                            title ?? "Kathy Devons",
                            fontFamily: "Epilogue-bold",
                            fontWeight: FontWeight.w700,
                            maxLines: 2,
                            color: titleColor ?? AppColors.black,
                            fontSize: 18,
                            overflow: TextOverflow.ellipsis,
                          )),
                    ),
                    Visibility(
                      visible: !(isChatPage == true),
                      child: SubHeading(
                        title ?? "Kathy Devons",
                        fontFamily: "Roboto-Medium",
                        color: titleColor ?? AppColors.black,
                        fontSize: 12,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Visibility(
                      visible: isChatPage == false,
                      child: SizedBox(
                        height: isPlaylist ? 0.5.w : 2.w,
                      ),
                    ),
                    Visibility(
                      visible: !(isChatPage == true),
                      child: RegularText(
                        subTitle ?? "variations-ignore".tr,
                        fontFamily: "Roboto-regular",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        color: subTitleColor ?? AppColors.textBlack,
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  static Widget profilePicWidget(
      {VoidCallback? onTap, String? imagePath, String? imageUrl}) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 12.3.h,
        width: 13.3.h,
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: imagePath != null
                    ? Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: imagePath != null
                                ? FileImage(File(imagePath))
                                : imageUrl != null
                                    ? NetworkImage(imageUrl)
                                    : AssetImage(
                                            Utils.getImagePath("no-profile"))
                                        as ImageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : CachedNetworkImage(
                        imageUrl: imageUrl ?? "",
                        fit: BoxFit.cover,
                        imageBuilder: (context, imageProvider) => CircleAvatar(
                          radius: 26.6.w / 2,
                          // clipBehavior:Clip.hardEdge,
                          backgroundColor: AppColors.kWhite,
                          backgroundImage: imageProvider,
                        ),
                        placeholder: (context, url) => Center(
                            child: CircularProgressIndicator(
                          color: AppColors.kSecondary,
                        )),
                        errorWidget: (context, url, error) => Image(
                            height: 26.6.w,
                            image:
                                AssetImage(Utils.getImagePath("no-profile"))),
                      )),
            if (onTap != null)
              Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: onTap,
                    child: Container(
                      height: 4.3.h,
                      width: 4.3.h,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppColors.kWhite, shape: BoxShape.circle),
                      child: Image.asset(
                        Utils.getIconPath("edit-pic"),
                      ),
                    ),
                  ))
          ],
        ),
      ),
    );
  }

  static Widget collectionDivider({horizontalPadding, Color? color}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 3.w),
      child: Divider(
        color: color ?? AppColors.dividerColor,
        height: 1,
        thickness: 1,
      ),
    );
  }
}
