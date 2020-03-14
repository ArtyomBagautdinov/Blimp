
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateEventCard extends StatefulWidget{
  CreateEventCard({Key key});


  @override
  _CreateEventCard createState() => _CreateEventCard();

}


class _CreateEventCard extends State<CreateEventCard>{

    @override
    Widget build(BuildContext context){
      return Card(
                              shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                              margin: const EdgeInsets.fromLTRB(30.0, 70.0, 30.0, 70.0),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("This is create event card"),
                                    Image(image: new NetworkImage("https://cdn3.vectorstock.com/i/1000x1000/04/32/cute-an-astronaut-sits-in-internet-vector-22760432.jpg"))
                                  ],
                                ),
                              )
                            );
    }
}