import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  title: Text(doc.data['name'].toString()),
                  subtitle: Text(doc.data['id'].toString()),
                );
              });
        },
      ),
    );
  }
}
