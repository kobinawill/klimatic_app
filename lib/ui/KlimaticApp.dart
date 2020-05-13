import 'package:flutter/material.dart';

class KlimaticApp extends StatefulWidget {
  @override
  _KlimaticAppState createState() => _KlimaticAppState();
}

class _KlimaticAppState extends State<KlimaticApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('KlimaticApp'),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.menu),
              onPressed: ()=>debugPrint("Hello"))
        ],
        backgroundColor: Colors.red,
      ),
      body: new Stack(
        children: <Widget>[
          new Center(
            child: new Container(
                child: new Image.asset('images/umbrella.png',
                  height:700.0,
                  width: 900,
                  fit: BoxFit.fill,)
            ),
          ),
          new Container(
            alignment: Alignment.topRight,
            margin: new EdgeInsets.fromLTRB(0, 10.0, 30.0, 0),
            child: new Text("Accra",
            style: CityStyle(),),
          ),
          new Container(
            alignment: Alignment.center,
            child: new Image.asset('images/light_rain.png'),
          )
        ],
      ),
    );
  }
}

TextStyle CityStyle(){
  return new TextStyle(
    color: Colors.white,
    fontStyle: FontStyle.italic,
    fontSize: 19.0
  );
}