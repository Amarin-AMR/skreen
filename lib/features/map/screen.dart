import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:skreen/base/base_screen.dart';
import 'package:skreen/constants/constants.dart';
import 'package:skreen/features/map/viewmodel.dart';

import '../../constants/markers.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen<MapScreenViewModel>(
      viewmodel: MapScreenViewModel(context: context),
      builder: ((context, model, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _button(context, model),
                SizedBox(
                  height: 500,
                  width: 400,
                  child: _map(context, model),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

Widget _button(
  BuildContext context,
  MapScreenViewModel model,
) {
  return ElevatedButton(
    onPressed: () async {
      await model.getCurrentLocation();
    },
    child: const Text('press'),
  );
}

Widget _map(
  BuildContext context,
  MapScreenViewModel model,
) {
  return FlutterMap(
    options: MapOptions(
      initialCenter: routpoints,
      initialZoom: 10,
    ),
    mapController: model.mapController,
    children: [
      TileLayer(
        urlTemplate: mapBaseUrl,
        userAgentPackageName: 'com.example.skreen',
      ),
      MarkerLayer(
        markers: marker,
      ),
      MarkerLayer(
        markers: [
          if (model.getLocationIsSuccess)
            Marker(
              point: model.center,
              child: Icon(
                Icons.account_circle,
                color: Colors.red.shade900,
              ),
            ),
        ],
      )
    ],
  );
}
