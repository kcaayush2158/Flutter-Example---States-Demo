import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MY APP",
      home: new HomePage() //calls the homePage class
    );
  }
}

 class HomePage extends StatefulWidget{

    @override
   _HomePageState createState() => new _HomePageState();
  }

  class _HomePageState extends State<HomePage>{
  String myTEXT = "HELLO World";

    void  _changeText(){
      setState((){
        if(myTEXT.startsWith("H")){
          myTEXT=" Hello banana";
        }else{
          myTEXT="Hello world";
        }
      });
    }
    Widget _bodyWidget() {
      return new Container(
        padding: const EdgeInsets.all(8.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(myTEXT),
              new RaisedButton(
                child:  new Text("Click Me"),
                onPressed: _changeText, // calls the changeText method
              )
            ],
          ),
        ),
      );
    }

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Home Page")
        ),
        body: _bodyWidget() //calls the body widget class
      );
   }
  }

