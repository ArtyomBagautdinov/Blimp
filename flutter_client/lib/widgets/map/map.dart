import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong/latlong.dart';
import 'map_repository.dart';

class MyMap extends StatefulWidget {
  MyMap(Key key, this._repository):super(key: key);
  final Repository _repository;

  @override
  _MyMap createState() => _MyMap();
}

class _MyMap extends State<MyMap> {
      List<Marker> _markers;
      bool _isLoading = true;
      @override
      void initState() {
        super.initState();
        widget._repository.getEvent('http://192.168.0.8:3000/events').then((events) {
                                    setState(() {
                                       _isLoading=false;
                                      _markers = events;
                                    });
                                  });
      }   
      @override
      Widget build(BuildContext context) {
        return SafeArea(
          child: _isLoading ? _buildLoading() : _buildMap());
  }

      Widget _buildMap(){
        return FlutterMap(
            options: MapOptions(
                plugins: [MarkerClusterPlugin()],
                center: LatLng(54.722332, 20.539943),
                zoom: 16,
                minZoom: 8,
                maxZoom: 20),
            layers: [
              TileLayerOptions(
                keepBuffer: 40,
                backgroundColor: Colors.white,
                urlTemplate:
                    "https://api.mapbox.com/styles/v1/mapbox/{style_id}/tiles/{z}/{x}/{y}"
                    "?access_token={accessToken}",
                additionalOptions: {
                  'accessToken': 'pk.eyJ1IjoiYWJhZ2F1dGRpbm92IiwiYSI6ImNrNjVnNzU3YTBvbTkzcG83bmM1amo4bTgifQ.3jwSMlbyvkSSOZViH2R3HA',
                  'id': 'mapbox.streets',
                  'style_id': 'light-v10'
                },
              ),
              MarkerClusterLayerOptions(
                maxClusterRadius: 120,
                size: Size(40, 40),
                anchor: AnchorPos.align(AnchorAlign.center),
                fitBoundsOptions: FitBoundsOptions(
                  padding: EdgeInsets.all(50),
                ),
                markers: _markers,
                polygonOptions: PolygonOptions(
                    borderColor: Colors.blueAccent,
                    color: Colors.white10,
                    borderStrokeWidth: 0),
                builder: (context, markers) {
                  return FloatingActionButton(
                    backgroundColor: Color.fromRGBO(128, 0, 255, 1),
                    child: Text(markers.length.toString()),
                    onPressed: null,
                  );
                },
              )
            ]);
      }

      Widget _buildLoading() {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            

}


