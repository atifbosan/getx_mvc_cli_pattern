import 'package:flutter/material.dart';

import '../../util/util.dart';

class AnimatedContainerWidget extends StatelessWidget {
  String unselectedImage;
  String SelectedImage;
  bool selected;
  VoidCallback onTap;
  AnimatedContainerWidget(
      {Key? key,
      required this.unselectedImage,
      required this.SelectedImage,
      required this.selected,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      child: AnimatedContainer(
        height: selected ? 50 : 40,
        width: selected ? 50 : 40,
        duration: Duration(milliseconds: 500),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  selected
                      ? Utils.getIconPath("$SelectedImage")
                      : Utils.getIconPath("$unselectedImage"),
                ))),
      ),
    );
  }
}
