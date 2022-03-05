import 'package:contacts/data_model.dart';
import 'package:flutter/material.dart';


ValueNotifier<List<studentModel>> studentlistnotifier = ValueNotifier([]);

void addStudent(studentModel value){
  studentlistnotifier.value.add(value);
  studentlistnotifier.notifyListeners();
}