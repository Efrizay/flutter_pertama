import 'package:flutter/material.dart';
import 'package:tas_management_app/app/utils/widget/style/AppColors.dart';
import 'package:get/get.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: 
    !context.isPhone? Row(
      children:[
    Expanded(
      child: ClipRRect(
           child: CircleAvatar(
            backgroundColor: Colors.amber, 
            radius: 120,
            foregroundImage: NetworkImage(
              '<img src="https://asset.kompas.com/crops/oehMOm4puThphScV7nGIeV1r5-s=/0x0:780x390/750x500/data/photo/2013/08/31/1851155fanpop780x390.jpg" jsaction="load:XAeZkd;" jsname="HiaYvf" class="n3VNCb KAlRDb" alt="Christian Bale Jadi Villain dalam Film Thor: Love and Thunder" data-noaft="1" style="width: 351px; height: 234px; margin: 0px;">',
           ),
           ),
      ),
    ),
    // SizedBox(width: 20,),
    Expanded
    (flex: 2,
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
      Text(
        'Alicia Jasmine', 
        style: TextStyle(
          color: AppColors.primaryText,
          fontSize: 30,
            ),
           ),
      Text(
        'alicia@gmail.com', 
        style: TextStyle(
          color: AppColors.primaryText, 
          fontSize: 15,
          ),
        ),
                             
      ],
      ),
    ), 
             ],
       )
    : Center(
      child: Column(
      children: [
        SizedBox(
      height: 20,
      ),
    ClipRRect(
         child: CircleAvatar(
          backgroundColor: Colors.amber,
          radius: 100,
          foregroundImage: NetworkImage(
            '<img src="https://asset.kompas.com/crops/oehMOm4puThphScV7nGIeV1r5-s=/0x0:780x390/750x500/data/photo/2013/08/31/1851155fanpop780x390.jpg" jsaction="load:XAeZkd;" jsname="HiaYvf" class="n3VNCb KAlRDb" alt="Christian Bale Jadi Villain dalam Film Thor: Love and Thunder" data-noaft="1" style="width: 351px; height: 234px; margin: 0px;">',
         ),
         ),
    ),
    SizedBox(
      height: 20,
      ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
      Text(
        'Alicia Jasmine',
        style: TextStyle(
          color: AppColors.primaryText, 
          fontSize: 30,
       ),
      ),
     Text(
      'alicia@gmail.com', 
      style: TextStyle(color: AppColors.primaryText, 
      fontSize: 15,
      ),
    ),
                             
      ],
      ),
    ), 
             ],
       ),
    ),
    );
  }
}

