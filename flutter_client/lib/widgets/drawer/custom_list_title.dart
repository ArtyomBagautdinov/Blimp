import 'package:flutter/material.dart';

class CustomListTitle extends StatelessWidget{
  IconData icon;
  String text;
  Function onTap;
  CustomListTitle(this.icon,this.text,this.onTap);

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child:  InkWell(
        splashColor: Color.fromRGBO(0, 0, 0, 0),
        onTap : onTap,
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                      Icon(icon),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          text,
                          style: TextStyle(fontSize: 16.0)
                          )
                        ),

                ],)
            ],
          )
        )
      ),
      );
  }

  


}