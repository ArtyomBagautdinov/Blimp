import 'package:flutter/material.dart';
import 'package:flutter_client/widgets/create_event/create_event_card.dart';
import 'package:flutter_client/widgets/map/map.dart';
import 'package:flutter_client/widgets/map/map_repository.dart';

import 'widgets/settings/settings_page.dart';


void main() => runApp(App());


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'Flutter Redux', 
       home: Home()
    );
  }
}



class Home extends StatefulWidget{
   
   @override
   _HomeState createState() => _HomeState();
   
}

class _HomeState extends State<Home>{

  static final Key myMapKey = PageStorageKey('myMapKey');
  static final Key settingsKey = PageStorageKey('settingsKey');
  int currentTab = 0;

  static MyMap myMap = MyMap(myMapKey,Repository());
  static Settings settings = Settings(settingsKey);
  List<Widget> pages= [myMap, settings];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentPage= myMap;
  
  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      body: PageStorage(
        child: currentPage,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        currentIndex: currentTab,
        backgroundColor: Colors.white,
        fixedColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: (int index) {
          setState(() {
            if(index>=2){
                currentTab = index;
                currentPage = pages[1];
            }
            else {
                currentTab = index;
                currentPage = pages[index];
            }

          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text("Messages"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flash_on),
            title: Text("Stories"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){
                 showDialog(
                   context: context,
                   builder: (BuildContext context){
                      return CreateEventCard();
                   }
                   );
                },
        child: Icon(Icons.add_circle, color: Colors.black87)
        ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

