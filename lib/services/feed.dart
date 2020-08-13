import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';

typedef RestaurantPressedCallback = void Function(String restaurantId);

typedef CloseRestaurantPressedCallback = void Function();

class Survey {
  final String id;
  final String question;
  final String a;
  final String b;
  final String c;
  final String d;
  final String e;

  final String photo;
  final DocumentReference reference;

  Survey._({this.question, this.a, this.c, this.b, this.d, this.e, this.photo})
      : id = null,
        reference = null;

  Survey.fromSnapshot(DocumentSnapshot snapshot)
      : assert(snapshot != null),
        id = snapshot.documentID,
        question = snapshot['question'],
        a = snapshot['a'],
        b = snapshot['b'],
        c = snapshot['c'],
        d = snapshot['d'],
        e = snapshot['e'],
        photo = snapshot['photo'],
        reference = snapshot.reference;
}
