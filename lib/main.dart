import "dart:io";
import "package:flutter/material.dart";
import "package:path_provider/path_provider.dart";
// import "appointmnets/Appointments.dart";
// import "contacts/Contacts.dart";
// import "notes/Notes.dart";
// import "tasks/Tasks.dart";
// import "utils.dart" as utils;

void main() {
  
  WidgetsFlutterBinding.ensureInitialized();
  startMeUp() async {
    Directory docsDir = await getApplicationDocumentsDirectory();
    runApp(FlutterBook());
  }

  startMeUp();
}

class FlutterBook extends StatelessWidget {

  Widget build(BuildContext context) {
     return MaterialApp(
       home: DefaultTabController(
         length: 4,
         child: Scaffold(
           appBar: AppBar(
             title: Text("Flutter Book"),
             bottom: TabBar(
               tabs: [
                 Tab(icon: Icon(Icons.date_range),text: "Appointments"),
                 Tab(icon: Icon(Icons.contacts),text: "Contacts"),
                 Tab(icon: Icon(Icons.note),text: "Notes"),
                 Tab(icon: Icon(Icons.assignment_turned_in),text: "Tasks")
               ]
               ),
           ),
           body: TabBarView(children: [
             Text("h"),Text("h"),Text("h"),Text("h")
           ],),
           ),
         ),
     );
  }
}