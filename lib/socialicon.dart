import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class Words extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
height: 300.0, 
                         padding: EdgeInsets.all(10.0),
                  alignment: Alignment.topLeft,
                         
                         child: RichText(
                           
              text: TextSpan(
                
                
                children: [
                  TextSpan(text: 'Hello,\n ',
                style: TextStyle
                (color: Colors.black,
                height: 0.75,
                fontSize: 40,),),
                  TextSpan(text:'I\'m Sibo\n\n', style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 30, )),
                  TextSpan(text:'Our Private Beta has now closed. We are back in development in order to launch our complete product soon!\n', style: TextStyle(color: Colors.black,fontSize: 20, height: 1.2)),
                  TextSpan(text:'Sign Up', style: TextStyle(color: Colors.red, fontSize: 25,decoration: TextDecoration.underline,
                   ), recognizer: TapGestureRecognizer()
                   ..onTap = (){debugPrint("Hello World");}),
                   TextSpan(text:' to receive notification on our next launch.\n', style: TextStyle(color: Colors.black,fontSize: 20, height: 1.2)),
                  TextSpan(text:'Share', style: TextStyle(color: Colors.red, fontSize: 25,decoration: TextDecoration.underline,
                   ), recognizer: TapGestureRecognizer()
                   ..onTap = (){debugPrint("Hello World");}),   
                   TextSpan(text:' your thoughts or questions in the meantime.\n\n', style: TextStyle(color: Colors.black,fontSize: 20, height: 1.2)),
                   TextSpan(text:'Be Beautiful+Fashionable+Real with Sibo!', style: TextStyle(color: Colors.black,fontSize: 20, height: 1.2)),
                   
    ],
  ),
)



      );
  }
}