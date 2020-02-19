import 'package:flutter/material.dart';
import 'custom_list_title.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        DrawerHeader(
          child: Container(
            child: Column(children: <Widget>[
              Row(children: <Widget>[
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Image.asset("images/blimp_icon.png",
                        color: null, width: 60, height: 60)),
                Padding(
                    padding: EdgeInsets.fromLTRB(8, 40, 0, 0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text("Blimp",
                                  style: TextStyle(
                                      color: Colors.black,
                                      backgroundColor: null,
                                      fontSize: 20))),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: InkWell(
                                    child: Text("Войти в профиль",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          backgroundColor: null,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300)
                                          ),
                                    onTap: (){}
                                  )
                              )
                        ]))
              ])
            ]),
          ),
        ),
        CustomListTitle(Icons.person_outline, "Мой профиль", () {}),
        CustomListTitle(Icons.inbox, "Сообщения", () {}),
        CustomListTitle(Icons.pin_drop, "События", () {})
      ],
    ));
  }
}
