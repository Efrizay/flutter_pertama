import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tas_management_app/app/routes/app_pages.dart';
import 'package:tas_management_app/app/utils/widget/style/AppColors.dart';

class MyFriends extends StatelessWidget {
  const MyFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:SingleChildScrollView(
            child: Column (
              children: [
                Row(
                  children: [
                      Text('My Friends', style: TextStyle(color: AppColors.primaryText, fontSize: 30,
                      ),
                      ),
                      Spacer(),
                       GestureDetector(
                         onTap: ()=> Get.toNamed(Routes.FRIENDS),
                         child: Text('more', style: TextStyle(color: AppColors.primaryText, fontSize: 25,
                                           ),
                                           ),
                       ),
                      Icon(Ionicons.chevron_forward, color: AppColors.primaryText,)
                  ],
                      ),
                       SizedBox(height: 20,
                        ),
                        SizedBox(height: 400,child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: 9,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:context.isPhone? 2 : 3, crossAxisSpacing: 20, mainAxisSpacing: 20), itemBuilder: (context,index){
                           return Column(children: [
                              ClipRRect(borderRadius: BorderRadius.circular(100),
                   child: Image(
                    image : 
                    NetworkImage('<img src="https://asset.kompas.com/crops/oehMOm4puThphScV7nGIeV1r5-s=/0x0:780x390/750x500/data/photo/2013/08/31/1851155fanpop780x390.jpg" jsaction="load:XAeZkd;" jsname="HiaYvf" class="n3VNCb KAlRDb" alt="Christian Bale Jadi Villain dalam Film Thor: Love and Thunder" data-noaft="1" style="width: 351px; height: 234px; margin: 0px;">',
                   ),
                   ),
                   ),
                   Text('Udin', style: TextStyle(color: AppColors.primaryText),)
                
                           ],);
                        }),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

