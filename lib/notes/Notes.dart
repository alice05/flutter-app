import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'NotesDBWorker.dart';
import 'NotesList.dart';
import 'NotesEntry.dart';
import 'NotesModel.dart' show NotesModel, notesModel;

/*
  The Notes screen.
*/
class Notes extends StatelessWidget {
    
    // Constructor
    Notes() {
      print("## Notes.constructor");

      // Initial load of data.
      notesModel.loadData("notes", NotesDBWorker.db);
    }

  /*
    The build() method.

    @param context The BuildContext for this widget. 
    @return A widget.
  */
  Widget build(BuildContext context) {
      print("## Notes.build()");

      return ScopedModel<NotesModel>(
        model: notesModel,
        child: ScopedModelDescendant<NotesModel>(
          builder: (BuildContext inContext, Widget inChild, NotesModel inModel) {
            return IndexedStack(
              index: inModel.stackIndex,
              children: [
                NotesList(),
                NotesEntry()
              ]
              );
          } 
          ,),
      );
  }
}