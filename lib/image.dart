// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// int sublength;

// class FetchAppp extends StatelessWidget {
//   final databaseReference = Firestore.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('FireStore Demo'),
//       ),
//       body: StreamBuilder<QuerySnapshot>(
//           stream: Firestore.instance.collection('Survey').snapshots(),
//           builder:
//               (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//             if (!snapshot.hasData) {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             }

//             return ListView.builder(
//                 sublength = snapshot.data.documents.length - 1,
//                 itemCount: snapshot.data.documents.length - sublength,
//                 itemBuilder: (BuildContext context, index) {
//               DocumentSnapshot doc = snapshot.data.documents[1];
//               return ListTile(
//                 title: Text(doc.data['name'].toString()),
//                 subtitle: Text(doc.data['id'].toString()),
//               );
//             });
//           }),
//     );
//   }

//   getData() {
//     databaseReference
//         .collection("Survey")
//         .document("Color")
//         .collection("Set1")
//         .document("Question2")
//         .get()
//         .then((DocumentSnapshot snapshot) {
//       print(snapshot.data['Question'].toString());
//     });
//   }
// }
