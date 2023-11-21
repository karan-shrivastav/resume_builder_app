import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dataProvider = ChangeNotifierProvider<ListDataNotifier>((ref) {
  return ListDataNotifier();
});

class ListDataNotifier extends ChangeNotifier {

  int id = 0; // Private variable

  // Getter method for id
  int? get getid => id;

  // Setter method for id
  void setId(int newId) {
    id = newId;
    notifyListeners();
  }

}