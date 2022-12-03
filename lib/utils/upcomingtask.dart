import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tas_management_app/app/utils/widget/style/AppColors.dart';

class UpcomingTask extends StatelessWidget {
  const UpcomingTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                  Text('Upcoming Task', style: TextStyle(color: AppColors.primaryText, fontSize: 30,
                  ),
                  ),
                   SizedBox(height: 20,
                    ),
                      SizedBox(
                    height: 400,
                    child: ListView(
                      clipBehavior: Clip.antiAlias,
                      scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Container(
                      
                     //  width: 400,
                     height: 160,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: AppColors.cardBg, ),
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
         children:[
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
             Spacer(),
             Container(
               height: 25,
               width: 80,
               color: AppColors.primaryBg,
               child: Center(child: Text('100 %', style: TextStyle(color: AppColors.primaryText,
               ),
               ),
               ),
             ),
             
         ],
         ),
         Spacer(),
          Container(
               height: 25,
               width: 80,
               color: AppColors.primaryBg,
               child: Center(child: Text('10 / 10 Task', style: TextStyle(color: AppColors.primaryText,
               ),
               ),
               ),
             ),  
             Text('Pemograman Mobile', style: TextStyle(color: AppColors.primaryText,fontSize: 20),
             ),
             Text('Deadline 2 hari lagi', style: TextStyle(color: AppColors.primaryText,fontSize: 15),
             ),
             ]),
                    ),
               
                    Container(
                     //  width: 400,
                     height: 200,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: AppColors.cardBg, ),
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
         children:[
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
              ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: const CircleAvatar(
                              backgroundColor: Colors.amber, 
                              radius: 20, 
                              foregroundImage: NetworkImage(
                                    '<img src="https://asset.kompas.com/crops/oehMOm4puThphScV7nGIeV1r5-s=/0x0:780x390/750x500/data/photo/2013/08/31/1851155fanpop780x390.jpg" jsaction="load:XAeZkd;" jsname="HiaYvf" class="n3VNCb KAlRDb" alt="Christian Bale Jadi Villain dalam Film Thor: Love and Thunder" data-noaft="1" style="width: 351px; height: 234px; margin: 0px;">',
             Spacer(),
             Container(
               height: 25,
               width: 80,
               color: AppColors.primaryBg,
               child: Center(child: Text('100 %', style: TextStyle(color: AppColors.primaryText,
               ),
               ),
               ),
             ),
             
         ],
         ),
         Spacer(),
          Container(
               height: 25,
               width: 80,
               color: AppColors.primaryBg,
               child: Center(child: Text('10 / 10 Task', style: TextStyle(color: AppColors.primaryText,
               ),
               ),
               ),
             ),  
             Text('Pemograman Mobile', style: TextStyle(color: AppColors.primaryText,fontSize: 20),
             ),
             Text('Deadline 2 hari lagi', style: TextStyle(color: AppColors.primaryText,fontSize: 15),
             ),
             ]),
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