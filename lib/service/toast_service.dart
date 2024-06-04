import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(String toastMessage) {
  Fluttertoast.showToast(
      msg: toastMessage, fontSize: 14.0, backgroundColor: Colors.grey);
}
