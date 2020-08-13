import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  Future<void> addSurveyData(Map surveyData, String surveyId) async {
    await Firestore.instance
        .collection("Survey")
        .document(surveyId)
        .setData(surveyData)
        .catchError((e) {
      print(e.toString());
    });
  }
}
