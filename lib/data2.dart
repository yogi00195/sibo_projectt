// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// //void main() => runApp(MyApp());

// class AMyApp extends StatefulWidget {
//   @override
//   _AMyAppState createState() => _AMyAppState();
// }

// class _AMyAppState extends State<AMyApp> {
//   List list = List();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           child: Center(
//             child: RaisedButton(
//               child: Text("click"),
//               onPressed: () {
//                 Firestore.instance
//                     .collection("Color")
//                     .getDocuments()
//                     .then((querySnapshot) {
//                   querySnapshot.documents.forEach((result) {
//                     list.add(result.data);
//                   });
//                   print(list[0]);
//                 });
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//void main() => runApp(AMyApp());

class AMyApp extends StatefulWidget {
  @override
  _AMyAppState createState() => _AMyAppState();
}

class _AMyAppState extends State<AMyApp> {
  List list = List();
  var c = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          
          child: Center(
           
            // Container(
            //         alignment: Alignment.center,
            //         child: new Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: <Widget>[
            //             new Text(
            //               "Color ${list[c]}",
            //               style: new TextStyle(fontSize: 22.0),
            //             ),
            //           ],
            //         ),
            //       ),
            child: RaisedButton(
              child: Text("click"),
              onPressed: () {
                Firestore.instance
                    .collection("Color")
                    .getDocuments()
                    .then((querySnapshot) {
                  querySnapshot.documents.forEach((result) {
                    list.add(result.data);
                  });
                  print(list[c]);

                  

                  setState(() {
                    c = c + 1;
                    if (c == 10) {
                      c = 0;
                      //Text("click");
                    }
                  });
                });
              },
            ),
          ),
          
        ),
      ),
    );
  }
}
