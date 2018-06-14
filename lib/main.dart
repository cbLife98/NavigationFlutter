import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(

        home: new FirstScreen(),
      )
  );
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: new Text('Home'),
            elevation: 2.0,
          ),
          body: new Container(
            child: new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new IconButton(
                    icon: new Icon(Icons.favorite),
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => SecondApp()));
                    },
                    iconSize: 60.0,
                    color: Colors.red,
                  ),
                  new Text(
                    'Home',
                    style: TextStyle(fontSize: 30.0),
                  )
                ],
              ),
            ),
          )),
    );
  }
}


class SecondApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: new Text('Second Page'),
            elevation: 2.0,
          ),
          body: new Container(
            child: new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new IconButton(
                    icon: new Icon(Icons.home),
                    onPressed:() {
                      Navigator.pop(context,new MaterialPageRoute(builder: (context) => FirstScreen()));
                    },
                    iconSize: 60.0,
                    color: Colors.red,
                  ),
                  new Text(
                    'Second Page',
                    style: TextStyle(fontSize: 30.0),
                  )
                ],
              ),
            ),
          )),
    );
  }
}