import 'package:flutter/material.dart';
import 'package:sibo_project/socialconnect.dart';
import 'package:sibo_project/socialicon.dart';

import 'homepage.dart';



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container (
     child:  Column   (
                        children: [   
                           Container(
             
             height: 180.0,
             

             child: ImageCarousel(),
           ),            
            
                       Container(
                         height: 320.0,
                         child: Words(),

             
             ),
            
           Container(
             height: 86.0,
             
            alignment: Alignment.bottomCenter,
             
            
                         
                         child: SocialConnect(),
                         

             
            
                      )
                        ],
    ),
    );
  
  }
}