import 'dart:async';
import 'package:flutter/material.dart';
import 'package:movie_consumer/constants/appInformation.dart';

//Helpers
import 'package:movie_consumer/helpers/colorHelper.dart';
import 'package:movie_consumer/helpers/imageHelper.dart';

//Fonts
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  //Collections
//Menu items

  @override
  void initState() {
    super.initState();
    //Initialize any collections here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: ColorHelper
                .darkThemeBackground(), //This will change the drawer background to blue.
            //other styles
          ),
          child: Drawer(
              child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(child: Text("")),
              ListTile(
                leading: Icon(Icons.search),
                title: Text('Item 1'),
                onTap: () {
                  //Navigator.
                  //Navigator.pop(context);
                  // Update the state of the app.
                  // ...
                },
                // trailing: DropdownButton(

                //   icon: Icon(Icons.arrow_drop_up),
                //   items: <String>['One', 'Two', 'Free', 'Four']
                //       .map<DropdownMenuItem<String>>((String value) {
                //     return DropdownMenuItem<String>(
                //       value: value,
                //       child: Text(value),
                //     );
                //   }).toList(),
                // ),
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text('Testing Again'),
                onTap: () {
                  //Navigator.
                  //Navigator.pop(context);
                  // Update the state of the app.
                  // ...
                },
                // trailing: DropdownButton(

                //   icon: Icon(Icons.arrow_drop_up),
                //   items: <String>['One', 'Two', 'Free', 'Four']
                //       .map<DropdownMenuItem<String>>((String value) {
                //     return DropdownMenuItem<String>(
                //       value: value,
                //       child: Text(value),
                //     );
                //   }).toList(),
                // ),
              ),
            ],
          ))),
      appBar: AppBar(
          backgroundColor: ColorHelper.darkThemeNavigationBar(),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Row(
            children: [
              Image.asset("resources/images/titleIcon.png"),
              Text(AppInformation.appName)
            ],
          ),
          actions: [
            FlatButton(
                onPressed: () => showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                            title: Text("Hello There"),
                            backgroundColor:
                                ColorHelper.darkThemeNavigationBar(),
                            actions: [
                              FlatButton(
                                  onPressed: () => {
//Login if not already signed in
                                      },
                                  splashColor: Colors.white38,
                                  child: Text("Confirmed",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            color: Colors.white,
                                            letterSpacing: .5),
                                      ))),
                              FlatButton(
                                  onPressed: () => {
//Login if not already signed in
                                      },
                                  splashColor: Colors.white38,
                                  child: Text("Cancel",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            color: Colors.white,
                                            letterSpacing: .5),
                                      )))
                            ])),
                splashColor: Colors.white38,
                textColor: ColorHelper.darkThemeTextColour(),
                child: Text("Login",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                          letterSpacing: .5),
                    ))),
            FlatButton(
                onPressed: () => {
//Login if not already signed in
                    },
                textColor: ColorHelper.darkThemeTextColour(),
                splashColor: Colors.white38,
                child: Text("Register",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                          letterSpacing: .5),
                    ))),
          ]),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              "",
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          //Run Some business logic here
          //Clicking on this will cause the user to begin a search for another movie
        },
        tooltip: 'Search for a new Movie',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
