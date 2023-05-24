import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../config/app_colors.dart';

class CustomTabBar extends StatefulWidget {
  final controller;
  List<Widget> tabs;
  final int selectedTab;
  final Function(int)?  onTap;
 final Function(TabController tabController)? tabController;

  CustomTabBar(this.controller, {required this.tabs,this.selectedTab = 0,this.onTap,this.tabController});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: widget.tabs.length, vsync: this,initialIndex: widget.selectedTab);
    if(widget.tabController!=null){
      widget.tabController!(_tabController!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      child: TabBar(
        controller: _tabController,
        indicatorColor: AppColors.kSecondary,
        indicatorWeight: 4,labelPadding: EdgeInsets.zero,
        indicatorSize: TabBarIndicatorSize.tab,padding: EdgeInsets.zero,
        labelColor: AppColors.black,
        onTap:  (index) {
          widget.controller.tabIndex = index;
          // if(widget.onTap!=null) widget.onTap!(index);
          widget.controller.update();
        },
        unselectedLabelColor: AppColors.black,
        labelStyle: TextStyle(
            fontSize: 9.sp,
            fontFamily: "Epilogue-Regular",
            fontWeight: FontWeight.w400),
        tabs: widget.tabs,
      ),
    );
  }
}