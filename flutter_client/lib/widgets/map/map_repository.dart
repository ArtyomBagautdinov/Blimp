import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:latlong/latlong.dart';
import '../event_avatar.dart';

class Repository {
  Future<List<Marker>> getEvent(String url) async {
    final response = await http.get(url);
    if (response.statusCode == 200) {  
      Marker fromJsonMap(Map<String, dynamic> json) {
              String _title = json['eventtitle'];
              String _adress = json['eventadress'];
              String _avatar = json['eventavatar'];
              String _description = json['eventdescription'];
              double latitude = double.parse(json['eventlatitude']);
              double longitude = double.parse(json['eventlongitude']);
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
