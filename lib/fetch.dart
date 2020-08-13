import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FetchApp extends StatelessWidget {
  final databaseReference = Firestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FireStore Demo'),
      ),

      // body: Center(
      //     child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: <Widget>[
      //     RaisedButton(
      //       child: Text('View Record'),
      //       onPressed: () {
      //         getData();
      //       },
      //     ),
      //   ],
      // )),

      body: StreamBuilder(
        stream: Firestore.instance.collection("Color").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (BuildContext context, index) {
                DocumentSnapshot doc = snapshot.data.documents[index];
                return ListTile(
                  title: Text(doc.data['Question'].toString()),
                  subtitle: Text(doc.data['option'].toString()),
                );
              });
          //  Image.network('https://picsum.photos/250?image=9',),
        },
      ),
      //center
    );
  }

  // void getData() {
  //   databaseReference
  //       .collection("Survey")
  //       .document("Color")
  //       .collection("Set1")
  //       .document("Question2")
  //       .get()
  //       .then((DocumentSnapshot snapshot) {
  //     print(snapshot.data['Question'].toString());
  //   });
  // }
  void getData() {
    databaseReference
        .collection("Color")
        .document("Q1")
        .get()
        .then((DocumentSnapshot snapshot) {
      print(snapshot.data['Question'].toString());
      print(snapshot.data['option'][1].toString());
      print(snapshot.data['Photo'].toString());
    });
  }
}
