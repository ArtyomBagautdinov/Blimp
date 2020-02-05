import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  
  @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.yellow,
          body: SafeArea(child: Text("Hello world")),
        );
      }

}



/*
Column(
              children: <Widget>[
                Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: new BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: new DecorationImage(
                            image: new NetworkImage(widget._imgLink),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: new BorderRadius.all(new Radius.circular(80.0)),
                          border: new Border.all(
                            color: Color.fromRGBO(128, 0, 255, 1),
                            width: 4.0,
                          ),
                        ),
                      )
              ],
            )
          )

*/