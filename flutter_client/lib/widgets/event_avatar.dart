import 'package:flutter/material.dart';


class MyEventAvatar extends StatefulWidget {
   MyEventAvatar({Key key, this.imgLink,this.adress,this.description,this.title});
   final String imgLink;
   final String title;
   final String adress;
   final String description;

   @override
   _MyEventAvatarState createState() => _MyEventAvatarState();
}

class _MyEventAvatarState extends State<MyEventAvatar>{
    @override
    Widget build(BuildContext context){
      return FloatingActionButton(
              child: new Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: new BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: new DecorationImage(
                            image: new NetworkImage(widget.imgLink),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: new BorderRadius.all(new Radius.circular(80.0)),
                          border: new Border.all(
                            color: Color.fromRGBO(128, 0, 255, 1),
                            width: 4.0,
                          ),
                        ),
                      ),
              onPressed: (){
                 showDialog(
                   context: context,
                   builder: (BuildContext context){
                      return AlertDialog(
                                      title: Text(widget.title, style: TextStyle(color: Colors.black)),
                                      content: Text(widget.description + "\n---------------------------------------------------\n  " + widget.adress, style: TextStyle(color: Colors.black87))
                                    );
                      
                   }
                   );
                }
              );
    }
}

 