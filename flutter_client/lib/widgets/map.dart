import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'event_avatar.dart';

class MyMap extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return FlutterMap(
              options: MapOptions(
                center: LatLng(54.722332, 20.539943),
                zoom: 20.0,
                minZoom: 8,
                maxZoom: 16),
                layers: [
                  new TileLayerOptions(
                    keepBuffer: 0,
                    backgroundColor: Colors.white,
                    urlTemplate: "http://tiles.maps.sputnik.ru/{z}/{x}/{y}.png",
                  ),
                  new MarkerLayerOptions(
                      markers: [
                      new Marker(width: 80.0,
                                 height: 80.0,
                                 point: new LatLng(54.722385, 20.522912),
                                 builder: (ctx) => new Container( child: MyEventAvatar(imgLink:'https://sun9-33.userapi.com/c850336/v850336417/facb5/cSjJo-AZGII.jpg'))
                      ),
                      new Marker(width: 80.0,
                                 height: 80.0,
                                 point: new LatLng(54.722332, 20.539950),
                                 builder: (ctx) => new Container(child: MyEventAvatar(imgLink:'https://sun9-68.userapi.com/c7003/v7003847/720ee/E8bFH_CU2yo.jpg'))
                      ),
                      new Marker(width: 80.0,
                                 height: 80.0,
                                 point: new LatLng(54.730608, 20.524889),
                                 builder: (ctx) => new Container(child: MyEventAvatar(imgLink:'https://miro.medium.com/max/688/1*CEyKA92LNEe0sSRD-YN-6w.png'))
                      ),
                      new Marker(width: 80.0,
                                 height: 80.0,
                                 point: new LatLng(54.718223, 20.500828),
                                 builder: (ctx) => new Container(child: MyEventAvatar(imgLink:'https://findquiz.ru//quiz_img/302/main.jpg'))
                      ),

                      ])
                  
                  ]
                );
  }
}
