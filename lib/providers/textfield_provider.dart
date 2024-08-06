import 'package:flutter/cupertino.dart';

class TextFieldProvider extends ChangeNotifier {
  String? eligibilityMessage = "";
  bool? isEligible;

  void testeligibility(int age) {
    if (age < 18) {
      eligibilityMessage = "Not eligible to vote!";
      isEligible= false;
      notifyListeners();
    } else {
      eligibilityMessage = "Eligible to vote";
      isEligible = true;
      notifyListeners();
    }
  }
}
