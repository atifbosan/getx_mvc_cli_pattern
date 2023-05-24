import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../app/config/app_colors.dart';
import '../../../app/shared_widgets/Text.dart';

class CustomBottomSheet extends GetView {
  final String? title;
  final String? description;
  final String? buttonText;
  final int? index;
  VoidCallback? onTap;
  double? height;

  CustomBottomSheet({Key? key, this.title, this.buttonText,this.index,this.onTap,this.description, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: Container(
          height: height,
          padding: EdgeInsets.symmetric(horizontal: 20),
          // margin: EdgeInsets.all(2.0.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey[300]!,
                offset: Offset(0, 3),
                blurRadius: 6,
              ),
            ],
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: AppColors.kBoxGrey3,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                margin: EdgeInsets.all(7),
                height: 4,
                width: 6.h,
              ),

              Flexible(
                child: SubHeading(
                  "$title",
                  fontFamily: "Epilogue-bold",fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),

              Flexible(
                child: SubHeading(
                  "$description",
                  fontFamily: "Roboto-regular",maxLines: 2,textAlign: TextAlign.center,

                  fontWeight: FontWeight.w400,fontSize: 7,
                ),
              ),
              InkWell(
                  onTap:onTap
                  /* () {
                    var c = Get.find<MessagesController>();
                    // if (c.currentIndex == 1) {
                    //   c.deleteRestaurantCollection(c.restaurantsCollection[index!].id!);
                    // } else if (c.currentIndex == 2) {
                    //   c.deletePlaylistCollection(c.playlistCollection[index!].id!);
                    // } else if (c.currentIndex == 3) {
                    //   c.deleteVideoCollection(c.videosCollection[index!].id!);
                    // }
                    Get.back();

                    (index == 1) ?
                    CustomBottomSheet(title: "Block ${c.chats[0].firstName} ${c.chats[0].lastName} (@${c.chats[0].foodleUserName}) ",buttonText: "Block",index: 2,onTap:null,description: "${c.chats[0].firstName} ${c.chats[0].lastName} will no longer be able to find your profile or message you on Foodle", height: 120,)
                        : Container();
                  }*/,
                  child: Container(
                    height: 35,
                    width: 55.w,margin: EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                        color: AppColors.kSecondary,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: SubHeading(
                        "$buttonText",
                        color: AppColors.kWhite,
                        fontFamily: "Roboto-bold",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }

}
