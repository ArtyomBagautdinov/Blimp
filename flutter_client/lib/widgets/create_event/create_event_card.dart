
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateEventCard extends StatefulWidget{
  CreateEventCard({Key key});


  @override
  _CreateEventCard createState() => _CreateEventCard();

}


class _CreateEventCard extends State<CreateEventCard>{

    @override
    Widget build(BuildContext context){
      return Card(
                              shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                              margin: const EdgeInsets.fromLTRB(30.0, 70.0, 30.0, 70.0),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                                  child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image.asset(
                                      'images/Pin_Header.png',
                                      width: 300,
                                      height: 150,
                                    ),
                                    TextField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  locale: Locale.cachedLocale,
                                                  fontSize:15,
                                                  fontWeight: FontWeight.w400
                                                ),
                                                labelText: 'EventTitle'
                                              ),
                                            ),
                                    Text(''),
                                    TextField(
                                      decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize:15,
                                                  fontWeight: FontWeight.w400
                                                ),
                                                labelText: 'Description'
                                              ),
                                            ),
                                    Text(''),
                                    Text('Date of event'),
                                    FloatingActionButton(
                                      backgroundColor: Color.fromRGBO(153, 0, 204, 1),
                                      onPressed: (){
                                        showDatePicker(
                                          context: context, 
                                          initialDate: DateTime.now(), 
                                          firstDate: DateTime(2020), 
                                          lastDate: DateTime(2022)
                                        ).then(null);
                                      },
                                      child: Icon(Icons.calendar_today),
                                    )
                                     
                                  ],
                                ),
                                  ),
                              )
                            );
    }
}

// Image(image: new NetworkImage("https://cdn3.vectorstock.com/i/1000x1000/04/32/cute-an-astronaut-sits-in-internet-vector-22760432.jpg")),