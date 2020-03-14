import 'package:flutter/widgets.dart';


class Settings extends StatefulWidget{
  Settings(Key key):super(key:key);
  
  @override
  _SettingsState createState() => _SettingsState();
}


class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
      return Container(
        child: Column(
          children: <Widget>[
            Text(
              "Hello body"
            ),
            Text(
              "Hello body"
            ),
            Text(
              "Hello body"
            ),
          ],
          ),
      );

  }
}