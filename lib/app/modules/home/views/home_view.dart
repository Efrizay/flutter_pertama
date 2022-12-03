import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tas_management_app/app/utils/widget/header.dart';
import 'package:tas_management_app/app/utils/widget/myTask.dart';
import 'package:tas_management_app/app/utils/widget/myfriends.dart';
import 'package:tas_management_app/app/utils/widget/sideBar.dart';
import 'package:tas_management_app/app/utils/widget/style/AppColors.dart';
import 'package:tas_management_app/app/utils/widget/upcomingtask.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  
 final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
 key: _drawerKey,
      drawer: const SizedBox(width: 150, child: SideBar()),,
      backgroundColor: AppColors.primaryBg,

       body: SafeArea(
        child: Row(
          children: [
         
       !context.isPhone
                ? Expanded(
                    flex: 2,
                    child: const SideBar(),
                  )
                : const SizedBox(),
            Expanded(
              flex: 15,
              child: Column(children: [
                !context.isPhone
                    ? const header()
                    : Container(
                        //content //isipage //screen
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                _drawerKey.currentState!.openDrawer();
                              },
                              icon: Icon(Icons.menu,
                                  color: AppColors.primaryText),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Task Management',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: AppColors.primaryText),
                                ),
                                Text(
                                  'Manage task made easy with friends',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: AppColors.primaryText),
                                ),
                              ],
                            ),
                            Spacer(),
                            const Icon(
                              Icons.notifications,
                              color: Colors.grey,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5,
                            ),

          ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: const CircleAvatar(
                              backgroundColor: Colors.amber, 
                              radius: 20, 
                              foregroundImage: NetworkImage(
                                    '<img src="https://asset.kompas.com/crops/oehMOm4puThphScV7nGIeV1r5-s=/0x0:780x390/750x500/data/photo/2013/08/31/1851155fanpop780x390.jpg" jsaction="load:XAeZkd;" jsname="HiaYvf" class="n3VNCb KAlRDb" alt="Christian Bale Jadi Villain dalam Film Thor: Love and Thunder" data-noaft="1" style="width: 351px; height: 234px; margin: 0px;">',
         ),
         ),
         ),
                ],
                ),
                ),

          Expanded(
                  child: Container(
                    // color: Colors.amber,
                    padding: !context.isPhone
                        ? EdgeInsets.all(50)
                        : EdgeInsets.all(20),
                    margin: !context.isPhone
                        ? EdgeInsets.all(10)
                        : EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: !context.isPhone
                            ? BorderRadius.circular(50)
                            : BorderRadius.circular(20)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'My Task',
                                  style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 30,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                //mystask
                                MyTask(),
                              ],
                            ),
                          ),
                          !context.isPhone
                              ? Expanded(
                                  child: Row(
                                    children: [
                                      UpcomingTask(),
                                      MyFriends(),
                                    ],
                ),
          
              ]),
            ),
              ),
            ),
          )
        ]),
      )
        , 
       ),
      ;
  }
}