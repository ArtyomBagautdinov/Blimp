import 'package:flutter/material.dart';
import 'package:flutter_client/widgets/map/map.dart';
import 'package:flutter_client/widgets/map/map_repository.dart';


void main() => runApp(App());


class App extends StatelessWidget {
  var globalContext;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'Flutter Redux', 
       home: Scaffold(
         body: MainPage(),
         floatingActionButton: FloatingActionButton(    
           onPressed: (){},      
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
    return  MyMap(Repository());
  }
}
