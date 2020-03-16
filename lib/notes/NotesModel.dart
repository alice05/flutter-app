import '../BaseModel.dart';

/// A class representing this PIM entity type. 
class Note {


  /// The fields this entity type contains.
  int id;
  String title;
  String content;
  String color;

  /// Just for debugging, so that we get something useful in the console.
  String toString() {
    return "{ id=$id, title=$title, content=$content, color=$color}";
  }
}

/*
  The model backing this entity type's view
*/
class NotesModel extends BaseModel{


  /// The color. Needed to be able to display what the user picks in the Text widget on the entry screen.
  String color;


  ///For display of the color chosen by the user.
  ///
  ///@param inColor The color.
  void setColor(String inColor) {

    print("## NotesModel.setColor() : inColor = $inColor");

    color = inColor;
    notifyListeners();
    
  }

}

NotesModel notesModel = NotesModel();