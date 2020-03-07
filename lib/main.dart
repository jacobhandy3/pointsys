import 'package:flutter/material.dart';
import 'Iscreen.dart';
import 'main2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Point Tracker',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: IScreen(),
    );
  }
}
class FirstScreen extends StatefulWidget {
  var name1;
  var name2;
  var count;
  int point = 0;
  FirstScreen(this.name1, this.name2, this.count, {Key key}) : super(key: key);
/*   RaisedButton rabuA = new RaisedButton(
                    onPressed: null,
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    textColor: Colors.white,
                    color: Colors.blue,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "+",
                    ),
  ); */
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _FirstScreenState createState() => _FirstScreenState(name1, name2);
}

class _FirstScreenState extends State<FirstScreen> {
  var n1;
  var n2;
  _FirstScreenState(this.n1, this.n2);
  int _counter = 0;
  int _counter2 = 0;
  var stopwatch = new Stopwatch();
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
    void _decrementCounter() {
    setState(() {
      _counter--;
      if(_counter < 0){_counter = 0;}
    });
  }
    void _reCounter() {
    setState(() {
      _counter = 0;
    });
  }
    void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }
    void _decrementCounter2() {
    setState(() {
      _counter2--;
      if(_counter2 < 0){_counter2 = 0;}
    });
  }
    void _reCounter2() {
    setState(() {
      _counter2 = 0;
    });
  }
    Widget buildFloatingButton(String text, VoidCallback callback) {
    TextStyle roundTextStyle = const TextStyle(fontSize: 16.0, color: Colors.white);
    return new FloatingActionButton(
      child: new Text(text, style: roundTextStyle),
      onPressed: callback);
  }
  void playSW(){
    setState(() {
      if (stopwatch.isRunning) {
        print("${stopwatch.elapsedMilliseconds}");
      } else {
        stopwatch.stop();
      }
    });
  }
  void stopSW(){
    setState(() {
      if (stopwatch.isRunning) {
        stopwatch.stop();
      } else {
        stopwatch.start();
      }
    });
  }
  void resetSW(){
    setState(() {
      if (stopwatch.isRunning) {
        stopwatch.reset();
      }
    });
  }
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
      body: 
      
      Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget> [new Container(
            //     child: new TimerPage(),
            //   ),]
            // ),
            Text('Team $n1',style: new TextStyle(
                fontSize: 30.0,
                color: Color(0xFFF9AA33),
              )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
             
              Text(
              '$_counter',
              style: new TextStyle(
                fontSize: 70.0,
                color: Color(0xFFF9AA33),
              )
            ),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
                    child: Icon(Icons.add),
                    padding: const EdgeInsets.all(8.0),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.blue,
                    onPressed: _incrementCounter,
                  ),
                  RaisedButton(
                    child: Icon(Icons.remove),
                    padding: const EdgeInsets.all(8.0),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.red,
                    onPressed: _decrementCounter,
                  ),
                  RaisedButton(
                    child: Icon(Icons.replay),
                    padding: const EdgeInsets.all(8.0),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.green,
                    onPressed: _reCounter,
                  ),
                ],)
              ]
            )
            ],),

Text('Team $n2',style: new TextStyle(
                fontSize: 30.0,
                color: Color(0xFFF9AA33),
              )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              Text(
              '$_counter2',
              style: new TextStyle(
                fontSize: 70.0,
                color: Color(0xFFF9AA33),
              )
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Icon(Icons.add),
                    padding: const EdgeInsets.all(8.0),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.blue,
                    onPressed: _incrementCounter2,
                  ),
                  RaisedButton(
                    child: Icon(Icons.remove),
                    padding: const EdgeInsets.all(8.0),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.red,
                    onPressed: _decrementCounter2,
                  ),
                  RaisedButton(
                    child: Icon(Icons.replay),
                    padding: const EdgeInsets.all(8.0),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.green,
                    onPressed: _reCounter2,
                  ),
                ],)
              ]
            )
            ],),
          ],
        ),
      ),
          );
  }}