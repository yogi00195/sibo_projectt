import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:sibo_project/services/api.dart';

class SurveyNotifier with ChangeNotifier {
  List<Survey> _surveyList = [];
  Survey _currentSurvey;

  UnmodifiableListView<Survey> get foodList =>
      UnmodifiableListView(_surveyList);

  Survey get currentSurvey => _currentSurvey;

  set foodList(List<Survey> foodList) {
    _surveyList = foodList;
    notifyListeners();
  }

  set currentSurvey(Survey survey) {
    _currentSurvey = survey;
    notifyListeners();
  }
}
