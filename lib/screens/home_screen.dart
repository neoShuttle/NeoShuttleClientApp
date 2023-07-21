// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//             child: Column(
//       children: [
//         const Text('Home!'),
//         // SizedBox(
//         //   height: 200,
//         //   child: FlutterMap(
//         //     options: MapOptions(
//         //       center: const LatLng(51.509364, -0.128928),
//         //       zoom: 9.2,
//         //     ),
//         //     nonRotatedChildren: const [
//         //       RichAttributionWidget(
//         //         attributions: [
//         //           TextSourceAttribution('OpenStreetMap contributors')
//         //         ],
//         //       ),
//         //     ],
//         //     // children: [
//         //     //   TileLayer(
//         //     //     urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
//         //     //     userAgentPackageName: 'com.example.app',
//         //     //   ),
//         //     // ],
//         //   ),
//         // )
//       ],
//     )));
//   }
// }


// class MapWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FlutterMap(
//       options: MapOptions(
//         center: LatLng(51.5074, 0.1278),
//         zoom: 13.0,
//       ),
//       layers: [
//         TileLayerOptions(
//           urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
//           subdomains: ['a', 'b', 'c'],
//         ),
//         MarkerLayerOptions(
//           markers: [
//             Marker(
//               width: 30.0,
//               height: 30.0,
//               point: LatLng(51.5074, 0.1278),
//               builder: (ctx) => Container(
//                 child: FlutterLogo(),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }