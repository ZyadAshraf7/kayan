import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InformationRegistirationController extends ChangeNotifier {
  String pickedDate = '2022-7-1';
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990, 8),
        lastDate: DateTime(2022,11,30));
    if (picked != null && picked != DateTime.now()) {
      pickedDate = DateFormat('yyyy-MM-dd').format(picked);
      notifyListeners();
    }
  }

  bool ?gender; // True for male, False for female
  void setMaleGender(){
    gender = true;
    notifyListeners();
  }
  void setFemaleGender(){
    gender = false;
    notifyListeners();
  }
}
