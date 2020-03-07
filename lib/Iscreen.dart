import 'package:flutter/material.dart';
import 'main.dart';

class IScreen extends StatefulWidget{

  IScreen({Key key}) : super(key: key);

    final String team1 = "";
    final String team2 = "";

  @override
  _IScreenState createState() => _IScreenState();
}
class _IScreenState extends State<IScreen> {
  var txtCtrl1 = TextEditingController();
  var txtCtrl2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color(0xFF232F34),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Point Tracker"),
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[ Text("Welcome to PointTracker! \n Please Submit Your Names!", style: new TextStyle(
                fontSize: 25.0,
                color: Color(0xFFF9AA33),
              )),]
            ),
            Column(
              children: <Widget>[ TextFormField(
                controller: txtCtrl1,
                      decoration: new InputDecoration(
                        hintText: 'Team1',
                        hintStyle: TextStyle(fontFamily: "Poppins", color: Colors.black),
                        fillColor: Colors.white,
                        filled: true,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(
                          ),
                        ),
                        //fillColor: Colors.green
                      ),
                      keyboardType: TextInputType.text,
                      autocorrect: true,
                      style: new TextStyle(
                        fontFamily: "Poppins", color: Colors.black, fontSize: 17.0,
                      ),
                    ),
            new RaisedButton( child: new Text("Go!"), color: Colors.green, textColor: Colors.white, padding: const EdgeInsets.all(8.0),
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => FirstScreen(txtCtrl1.text, txtCtrl2.text, 0)));}
            ),
             new TextFormField(
                controller: txtCtrl2,
                      decoration: new InputDecoration(
                        hintText: 'Team2',
                        hintStyle: TextStyle(fontFamily: "Poppins", color: Colors.black,),
                        fillColor: Colors.white,
                        filled: true,
                        border: new OutlineInputBorder(
                          
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(
                            color: Colors.white
                          ),
                        ),
                        //fillColor: Colors.green
                      ),
                      keyboardType: TextInputType.text,
                      autocorrect: true,
                      style: new TextStyle(
                        fontFamily: "Poppins",color: Colors.black, fontSize: 17.0,
                      ),
                    ),]
            )
          ],
        ),
      ),
    );
}
}