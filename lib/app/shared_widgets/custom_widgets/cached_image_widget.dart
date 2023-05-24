import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_mvc_cli_pattern/app/config/app_colors.dart';
import 'package:getx_mvc_cli_pattern/app/util/util.dart';

import 'package:sizer/sizer.dart';

class CachedImageWidget extends StatelessWidget {
  String img;
  CachedImageWidget({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: img,
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
      ),
      placeholder: (context, url) => Center(
          child: CupertinoActivityIndicator(
        radius: 15,
        color: AppColors.kPrimary,
      )),
      errorWidget: (context, url, error) => Container(
        height: 5.h,
        width: 5.h,
        decoration: BoxDecoration(
          color: AppColors.kPrimary,
          shape: BoxShape.circle,
          /*   image: DecorationImage(
                fit: BoxFit.cover,
                scale: 4,
                image: AssetImage(Utils.getIconPath("peron_vector"))),*/
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(Utils.getIconPath("peron_vector")),
        ),
      ),
    );
  }
}
