// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:fluttertoast/fluttertoast.dart';

Future batteryDisplayStatusOFF(
    BuildContext context, String? strWidget, String? widgetCode) async {
  String strMsg = "";
  if (widgetCode.toString() == 'battery') {
    if (strWidget.toString() == 'false')
      strMsg = "BATTERY SAVER DISABLED";
    else
      strMsg = "BATTERY SAVER ENABLED";
  } else if (widgetCode.toString() == 'feedback') {
    if (strWidget.toString() == 'false')
      strMsg = "FEEDBAK SOUNDS DISABLED";
    else
      strMsg = "FEEDBAK SOUNDS ENABLED";
  }

  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(strMsg),
  ));

  Fluttertoast.showToast(
      msg: strMsg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      textColor: Colors.white,
      fontSize: 25.0);
}
