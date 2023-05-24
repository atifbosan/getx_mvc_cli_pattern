import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../config/app_colors.dart';
import '../util/util.dart';
import 'Text.dart';
import 'custom_button.dart';

class SharedPopUpList extends StatelessWidget {
  final String? firstName, lastName;
  final String? imageUrl;
  final String? restaurantName;
  final double? totalRestaurants;
  final VoidCallback? onTap;

  SharedPopUpList({
    required this.firstName,
    required this.lastName,
     this.imageUrl,
    required this.restaurantName,
    required this.totalRestaurants,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
height: 400,
      width: 280,
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.all(Radius.circular(25)),
      //     color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(39, 36, 39, 59),
            child: Text(
              "${firstName} ${lastName} Shared a Collection with You",
              maxLines: 3,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          CachedNetworkImage(
            imageUrl: imageUrl ?? "",
            //collection.cover ?? "",
            fit: BoxFit.cover,
            imageBuilder: (context, imageProvider) => CircleAvatar(
              radius: 9.5.w / 2,
              // clipBehavior:Clip.hardEdge,
              backgroundColor: AppColors.kWhite,
              backgroundImage: imageProvider,
            ),
            placeholder: (context, url) => Center(
                child: CircularProgressIndicator(
              color: AppColors.kSecondary,
            )),
            errorWidget: (context, url, error) => Container(
              height: 23.w,
              width: 23.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: url.contains("assets")
                    ? AppColors.kSecondary
                    : AppColors.dividerColor,
              ),
              padding: EdgeInsets.all(15),
              child: Image(
                  height: 7.w,
                  image: AssetImage(url.contains("assets")
                      ? url
                      : Utils.getImagePath("place_holder"))),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            "${restaurantName}",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              "${totalRestaurants} Restaurants",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff737373)),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(13, 70, 12, 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton2(
                    onpress: () {

                    },
                    titleWidget: SubHeading(
                      "Save",
                      color: AppColors.kWhite,

                    ),
                    fontSize: 16,

                    fontWeight: FontWeight.w600,
                    color: AppColors.kSecondary,
                    height: 4.57.h,
                    width: 120.0,
                  ),

                  CustomButton2(
                    onpress: () {

                    },
                    titleWidget: SubHeading(
                       "Decline",
                      color: AppColors.black,
                    ),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kGrey,
                    height: 4.57.h,
                    width: 120.0,
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
