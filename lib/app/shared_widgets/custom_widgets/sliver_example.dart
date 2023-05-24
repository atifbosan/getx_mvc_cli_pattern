// import 'package:flutter/cupertino.dart';
//
// Widget build(BuildContext context) {
//   // print('This is loading status ${Provider.of<ContactsProvider>(context, listen: false).isLoadingContacts}');
//   SizeConfig().init(context);
//   return WillPopScope(
//     onWillPop: () {
//       return CustomPopUp().exitPopUp(context);
//     },
//     child: Consumer<ContactsProvider>(builder: (context, data, _) {
//       return AdvancedDrawer(
//         drawer: AppDrawer(),
//         backdropColor: AppColors.kGradientColorBlue,
//         controller: _advancedDrawerController,
//         animationCurve: Curves.easeInOut,
//         animationDuration: const Duration(milliseconds: 300),
//         animateChildDecoration: true,
//         rtlOpening: false,
//         disabledGestures: false,
//         childDecoration: const BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(16)),
//         ),
//         child: AbsorbPointer(
//           ignoringSemantics: Provider.of<ContactsProvider>(context, listen: false).isLoadingContacts,
//           absorbing: Provider.of<ContactsProvider>(context, listen: false).isLoadingContacts,
//           child: SafeArea(
//             child: Scaffold(
//               backgroundColor: Colors.white,
//               // drawer: const AppDrawer(),
//               body: DefaultTabController(
//                 length: 2,
//                 child: NestedScrollView(
//                     headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//                       return <Widget>[
//                         SliverAppBar(
//                           actions: [
//                             SizedBox(
//                               width: SizeConfig.screenWidth! * 0.05,
//                             ),
//                           ],
//                           elevation: 0,
//                           backgroundColor: AppColors.kGradientColorBlue,
//                           title: Text("Contacts Backup",
//                               style:
//                               TextStyle(fontSize: SizeConfig.screenHeight! * 0.023, fontWeight: FontWeight.bold)),
//                           leading: IconButton(
//                             onPressed: handleMenuButtonPressed,
//                             icon: ValueListenableBuilder<AdvancedDrawerValue>(
//                               valueListenable: _advancedDrawerController,
//                               builder: (_, value, __) {
//                                 return AnimatedSwitcher(
//                                   duration: Duration(milliseconds: 250),
//                                   child: Icon(
//                                     value.visible ? Icons.clear : Icons.menu,
//                                     key: ValueKey<bool>(value.visible),
//                                   ),
//                                 );
//                               },
//                             ),
//                           ),
//                           expandedHeight: SizeConfig.screenHeight! * 0.3,
//                           pinned: false,
//                           forceElevated: true,
//                           flexibleSpace: Stack(
//                             children: [
//                               FlexibleSpaceBar(
//                                 background: Image.asset(
//                                   "assets/main_screen_bg_img.png",
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: SizeConfig.screenWidth! * 0.04,
//                                     vertical: SizeConfig.screenHeight! * 0.09),
//                                 child: Container(
//                                   height: SizeConfig.screenHeight! * 0.2,
//                                   width: SizeConfig.screenWidth! * 0.5,
//                                   decoration: BoxDecoration(
//                                     color: AppColors.kAppBarContainerColor,
//                                     borderRadius: BorderRadius.circular(15),
//                                   ),
//                                   child: SingleChildScrollView(
//                                     child: Column(
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         Row(
//                                           mainAxisAlignment: MainAxisAlignment.center,
//                                           children: [
//                                             SizedBox(
//                                               height: SizeConfig.screenHeight! * 0.03,
//                                             ),
//                                             Text("Total Contacts  ", style: TextStyle(color: Colors.white)),
//                                             SizedBox(
//                                               width: SizeConfig.screenWidth! * 0.09,
//                                             ),
//                                             Text(data.contactlist.length.toString(),
//                                                 style: TextStyle(color: Colors.white)),
//                                           ],
//                                         ),
//                                         SizedBox(
//                                           height: SizeConfig.screenHeight! * 0.02,
//                                         ),
//                                         Row(
//                                           mainAxisAlignment: MainAxisAlignment.center,
//                                           children: [
//                                             Text("Synced             ", style: TextStyle(color: Colors.white)),
//                                             SizedBox(
//                                               width: SizeConfig.screenWidth! * 0.09,
//                                             ),
//                                             Text(
//                                                 Provider.of<ContactFileService>(context, listen: true)
//                                                     .syncedContacts
//                                                     .length
//                                                     .toString(),
//                                                 style: TextStyle(color: Colors.white)),
//                                           ],
//                                         ),
//                                         SizedBox(
//                                           height: SizeConfig.screenHeight! * 0.02,
//                                         ),
//                                         Row(
//                                           mainAxisAlignment: MainAxisAlignment.center,
//                                           children: [
//                                             Text("Unsynced         ", style: TextStyle(color: Colors.white)),
//                                             SizedBox(
//                                               width: SizeConfig.screenWidth! * 0.09,
//                                             ),
//                                             Text(
//                                                 Provider.of<ContactsProvider>(context, listen: true).unSyncedContact.length.toString(),
//                                                 style: TextStyle(color: Colors.white)),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SliverPersistentHeader(
//                           delegate: SliverAppBarDelegate(
//                             child: PreferredSize(
//                               preferredSize: Size(20, 70),
//                               child: TabBar(
//                                 controller: _controller,
//                                 indicator: BoxDecoration(
//                                   // color: backgroundColor,
//                                     gradient: LinearGradient(
//                                       begin: Alignment.centerLeft,
//                                       end: Alignment.centerRight,
//                                       colors: [
//                                         AppColors.kGradientColorBlue,
//                                         AppColors.kGradientColorLightBlue,
//                                       ],
//                                     ),
//                                     borderRadius: const BorderRadius.all(
//                                       Radius.circular(50.0),
//                                     )),
//                                 padding: EdgeInsets.all(3),
//                                 labelColor: Colors.white,
//                                 unselectedLabelColor: Colors.black,
//                                 tabs: [
//                                   Tab(
//                                     child: Row(
//                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                       children: [
//                                         SvgPicture.asset("assets/profile_icon.svg"),
//                                         Text("Contacts"),
//                                       ],
//                                     ),
//                                   ),
//                                   Tab(
//                                     child: Row(
//                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                       children: [
//                                         SvgPicture.asset("assets/synced_icon.svg"),
//                                         Text("Synced"),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           pinned: true,
//                         ),
//                       ];
//                     },
//                     body: TabBarView(
//                       controller: _controller,
//
//                       children: const [
//                         AllContactsTab(),
//                         SyncedContactsTab(),
//                       ],
//                     )),
//               ),
//             ),
//           ),
//         ),
//       );
//     }),
//   );
// }