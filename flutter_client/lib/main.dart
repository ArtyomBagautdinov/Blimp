import 'package:flutter/material.dart';
import 'package:flutter_client/widgets/drawer/app_drawer.dart';
import 'package:flutter_client/widgets/map/map.dart';
import 'package:flutter_client/widgets/map/map_repository.dart';


void main() => runApp(App());


class App extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'Flutter Redux', 
       home: Scaffold(
         key: _scaffoldKey,
         appBar: AppBar(
           backgroundColor: Color.fromRGBO(1, 1, 1, 0),
           elevation: 0,
           leading: IconButton(
             hoverColor: Color.fromRGBO(1, 1, 1, 0),
             highlightColor: Color.fromRGBO(1, 1, 1, 0),
             splashColor: Color.fromRGBO(1, 1, 1, 0),
             icon: Icon(Icons.menu,color: Colors.black,size: 28), 
             onPressed: ()=> _scaffoldKey.currentState.openDrawer()
            )
         ), 
         body: MyMap(Repository()),
         drawer: AppDrawer()
      )
    );
      
  }
}

