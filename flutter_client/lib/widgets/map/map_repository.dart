import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:latlong/latlong.dart';
import '../event/event_avatar.dart';

class Repository {


  Future<List<Marker>> getEvent(String url) async {

    final response = await http.get(url);
    
    if (response.statusCode == 200) {  
      Marker fromJsonMap(Map<String, dynamic> json) {
              String _title = json['eventTitle'];
              String _adress = json['eventAdress'];
              String _avatar = json['eventAvatar'];
              String _description = json['eventDescription'];
              double latitude = json['latitude'];
              double longitude =json['longitude'];
              return Marker(
                  width: 80.0,
                  height: 80.0,
                  point: new LatLng(longitude, latitude),
                  builder: (ctx) => new Container(
                      child: MyEventAvatar(
                          adress: _adress,
                          title : _title,
                          description: _description,
                          imgLink: _avatar)));
            }

      List<Marker> fromJsonArray(String jsonString) {
                    Map<String, dynamic> decodedMap = jsonDecode(jsonString);
                    List<dynamic> dynamicList = decodedMap['data'];
                    //print(decodedMap);
                    List<Marker> events = new List<Marker>();
                    dynamicList.forEach((f) {
                      Marker s = fromJsonMap(f);
                      events.add(s);
                    });
                    return events;
      }

      List<Marker> events = fromJsonArray(response.body);

      return events;    
    }
  }
}
