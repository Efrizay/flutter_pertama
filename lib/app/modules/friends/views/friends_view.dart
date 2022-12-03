import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tas_management_app/app/utils/widget/header.dart';
import 'package:tas_management_app/app/utils/widget/sideBar.dart';
import 'package:tas_management_app/app/utils/widget/style/AppColors.dart';


import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {

  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
           key: _drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: Row(
        children: [
      !context.isPhone 
      ? const Expanded(
          flex: 2,
          child:  SideBar(), 
        )
        : const  SizedBox(),
      Expanded(
        flex: 15,
        child: Column(children: [
          !context.isPhone 
          ? const header()
          : Container(
            // content / isi page / screen
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    _drawerKey.currentState!.openDrawer();
                  }, 
                  icon: const Icon(
                    Icons.menu, 
                    color: AppColors.primaryText ,
          ),
          ),
          const SizedBox(
              width: 15,
            ),
          Column(
         // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Task Management',
              style: TextStyle(
                fontSize: 20, color: AppColors.primaryText),
              ),
            Text(
              'Manage Task Made Easy with Friends',
                style: TextStyle(
                  fontSize: 13, color: AppColors.primaryText),
                ),
          ],
          ),
          const Spacer(),
          const Icon (
            Ionicons.notifications, 
                color: AppColors.primaryText,
            ),
            const SizedBox(
              width: 15,
            ),
            ClipRRect(borderRadius: BorderRadius.circular(30),
            child: const CircleAvatar(
              backgroundColor: Colors.amber, 
              radius: 25, 
              foregroundImage: NetworkImage(
                '<img src="https://asset.kompas.com/crops/oehMOm4puThphScV7nGIeV1r5-s=/0x0:780x390/750x500/data/photo/2013/08/31/1851155fanpop780x390.jpg" jsaction="load:XAeZkd;" jsname="HiaYvf" class="n3VNCb KAlRDb" alt="Christian Bale Jadi Villain dalam Film Thor: Love and Thunder" data-noaft="1" style="width: 351px; height: 234px; margin: 0px;">'),
              ),
            )
          ],
          ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(50),
              margin: !context.isPhone 
              ? const EdgeInsets.all(10)
              : const EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: !context.isPhone 
                ? BorderRadius.circular(50)
                : BorderRadius.circular(30),
              ),
            ),
          )
        ]),
      )
        ],
      ),
    
  }
}
