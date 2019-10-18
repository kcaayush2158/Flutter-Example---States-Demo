import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'new_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "MY APP",
        home: new HomePage() , //calls t// he homePage class
      theme: new ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        accentColor: Colors.yellow,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.grey[50]:null,
      ),

    );
  }
}

class HomePage extends StatefulWidget{

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>{
  String myTEXT = "HELLO World";

  Widget _bodyWidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0),

      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text(myTEXT),
          ]

        ),
      ),
    );
  }

  void _pressed(String message){

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Home Page"),
          actions:<Widget>[
            new IconButton(icon: new Icon(Icons.add_alert), onPressed: (){_pressed('alert pressed ');}),
            new IconButton(icon: new Icon(Icons.add_to_photos), onPressed: (){_pressed("icon pressed");}),
            new IconButton(icon: new Icon(Icons.people), onPressed: (){_pressed("people pressed");}),
          ],
            elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 :0.0,
        ),
        drawer:  new Drawer(
          child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                    accountName:  new Text("Aayush Kc"),
                    accountEmail: new Text("aayushkc2158@gmail.com"),
                    currentAccountPicture: new CircleAvatar(
                        backgroundColor: Colors.white,
                         child: new Text("A"),
                     ),
                  otherAccountsPictures: <Widget>[
                    new CircleAvatar(
                      backgroundColor: Colors.white,
                      child: new Text("K"),
                    )
                  ],
                  ),
                new ListTile(
                  title: new Text("Page 1"),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: (){
                    Navigator.of(context).push(new MaterialPageRoute(    //routing to the another page
                        builder: (BuildContext context) =>
                        new NewPage("PageOne")));
                  }
                ),
                new ListTile(
                  title: new Text("Page 2"),
                  trailing: new Icon(Icons.arrow_right),
                ),
                new ListTile(
                  title: new Text("Page 4"),
                  trailing: new Icon(Icons.arrow_right),
                ),
                new Divider(),
                new ListTile(
                  title: new Text("Close"),
                  trailing: new Icon(Icons.close),
                  onTap: ()=> Navigator.of(context).pop(),
                )
              ],
          ),
        ),
        body: _bodyWidget() ,//calls the body widget class
    );
  }
}