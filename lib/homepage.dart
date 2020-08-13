import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       
       height: 180,
       child: Carousel(
         boxFit: BoxFit.fill,
         images: [
           AssetImage('assets/images/1.jpeg'),
           AssetImage('assets/images/2.jpeg'),
           AssetImage('assets/images/3.jpeg'),
           AssetImage('assets/images/4.jpeg'),
           AssetImage('assets/images/5.jpeg'),
           AssetImage('assets/images/6.jpeg'),
                     
           
           

         ],
       ),
    
     );
  }
}
