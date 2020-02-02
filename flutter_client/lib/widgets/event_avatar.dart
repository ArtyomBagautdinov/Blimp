import 'package:flutter/material.dart';

class MyEventAvatar extends StatefulWidget {
   MyEventAvatar({Key key, this.imgLink});
   final String imgLink;

   @override
   _MyEventAvatarState createState() => _MyEventAvatarState();
}

class _MyEventAvatarState extends State<MyEventAvatar>{
    //https://sun9-33.userapi.com/c850336/v850336417/facb5/cSjJo-AZGII.jpg
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
              onPressed: (){}
              );
    }
}