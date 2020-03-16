import 'package:scoped_model/scoped_model.dart';

/*
  Base class that the model for all entities extend.
*/
class BaseModel extends Model {

  //which page of the stack is currently showing
  int stackIndex = 0;
  
  // The list of entities
  List entityList = [];

  // The entity being edited.
  var entityBeingEdited;
  
  /// The date choosen by the user. Needed to be able to display what the user picks on the entry screen.
  String choosenDate;

  /*
  For display of the date choosen by user.
  @param inDate The date in MM/DD/YYYY form.
  */
  void setChoosenDate(String inDate) {

    print("## BaseModel.setChosenDate(): inDate = $inDate");

    choosenDate = inDate;
    notifyListeners();
  }

  /*
  Load data from database
  @param inEntity The type of entity being loaded. (appointments, contacts, notes, tasks)
  @param inDatabase The DBProvider.db instance for the entity
  */
  void loadData(String inEntityType, dynamic inDatabase) async {
    entityList = await inDatabase.getAll();
    notifyListeners();
  }


  /*
  For navigating between entry and listviews
  @param inStackIndex
  */
  void setStackIndex(int inStackIndex) {
    stackIndex = inStackIndex;
    notifyListeners();
  }

}