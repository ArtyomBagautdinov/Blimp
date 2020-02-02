import 'package:flutter/material.dart';
import 'package:flutter_client/widgets/map.dart';


void main() => runApp(App());


class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'Flutter Redux', 
       home: Scaffold(
         body: MainPage(),
         floatingActionButton: FloatingActionButton(
           onPressed:(){},
           child: Icon(Icons.assistant_photo , color: Colors.white),
           backgroundColor: Colors.purple,
            ),
       )
       );
      
  }
}


class MainPage extends StatefulWidget {
  const MainPage({ Key key }) : super(key: key);

  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return  MyMap();
  }
}