import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:intl/intl.dart';
import 'BaseModel.dart';

// The application's document directory for contact avatart image files and database files.
Directory docsDir;

/*
Function for getting selected date from the user.

@param inContext The building context of the parent Widget.
@return Future
*/
Future selectDate(
    BuildContext inContext, BaseModel inModel, String inDateString) async {
  DateTime initialDate = DateTime.now();

  if (inDateString != null) {
    List dateParts = inDateString.split(",");
    initialDate = DateTime(int.parse(dateParts[0]), int.parse(dateParts[1]),
        int.parse(dateParts[2]));
  }

  DateTime picked = await showDatePicker(
      context: inContext,
      initialDate: initialDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100)
      );
  if(picked != null) {
    inModel.setChoosenDate(DateFormat.yMMMd("en_US").format(picked.toLocal()));
    return "${picked.year},${picked.month},${picked.day}";
  }
}
