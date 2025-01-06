import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Carte1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final emsiGueliz = const Marker(
      width: 80.0,
      height: 80.0,
      point: LatLng(31.65375468982776, -8.021451299999999),
      child: Icon(Icons.school, size: 45.0, color: Colors.green),
    );

    final emsiCentre = const Marker(
      width: 80.0,
      height: 80.0,
      point: LatLng(31.631264681786426, -8.0127703503005),
      child: Icon(Icons.school, size: 45.0, color: Colors.green),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Carte 1'),
        foregroundColor: Colors.orange,
        backgroundColor: Colors.black,
      ),
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(31.63139639931016, -8.01278402883554),
          initialZoom: 14,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'cartes',
          ),
          MarkerLayer(
            markers: [emsiCentre, emsiGueliz],
          ),
        ],
      ),
    );
  }
}