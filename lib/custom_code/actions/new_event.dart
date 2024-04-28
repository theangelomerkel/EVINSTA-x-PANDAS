// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:add_2_calendar/add_2_calendar.dart';

Future<bool> newEvent(String title, String description, String location,
    DateTime startDate) async {
  final Event newEvent = Event(
    title: title,
    description: description,
    location: location,
    startDate: startDate,
    endDate: startDate.add(Duration(minutes: 60)),
  );

  bool success = await Add2Calendar.addEvent2Cal(newEvent);

  return success;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
