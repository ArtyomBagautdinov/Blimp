import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EventCard extends StatefulWidget{
  EventCard({Key key, this.imgLink,this.adress,this.description,this.title});
  final String imgLink;
  final String title;
  final String adress;
  final String description;
  @override
  _EventCard createState() => _EventCard();
}


class _EventCard extends State<EventCard>{
    @override
    Widget build(BuildContext context){
        return Container(
                        child:Card(
                              shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                              margin: const EdgeInsets.fromLTRB(30.0, 70.0, 30.0, 70.0),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                              width: 70.0,
                                              height: 70.0,
                                              decoration: new BoxDecoration(
                                                color: const Color(0xff7c94b6),
                                                image: new DecorationImage(
                                                  image: new NetworkImage(widget.imgLink),
                                                  fit: BoxFit.cover,
                                                ),
                                                borderRadius: new BorderRadius.all(new Radius.circular(80.0)),
                                                border: new Border.all(
                                                  color: Color.fromRGBO(128, 0, 255, 1),
                                                  width: 3.0,
                                                ),
                                              ),
                                            ),
                                    Text(widget.title,
                                        style: TextStyle(fontSize:27,
                                                        fontFamily: "Muli",
                                                        color: Color.fromRGBO(81, 81, 81,1),
                                                        fontWeight: FontWeight.bold),
                                                        ),
                                    
                                    Container(
                                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      child:Text(widget.adress,
                                        style: TextStyle(fontSize:15,
                                                        fontFamily: "Muli",
                                                        color: Color.fromRGBO(97, 97, 97,1),
                                                        fontWeight: FontWeight.w200),
                                                        )
                                    ),

                                    Card(
                                    shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                    child:Container(
                                      child:Text(widget.description,
                                        style: TextStyle(fontSize:14,
                                                        fontFamily: "Muli",
                                                        color: Color.fromRGBO(97, 97, 97,1),
                                                        fontWeight: FontWeight.normal),
                                                        ),
                                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),               
                                    )
                                    )
                                  ],
                                ),
                              )
                            ),

                      );
    }   
}