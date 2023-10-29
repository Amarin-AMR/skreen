import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
import 'package:skreen/base/base_viewmodel.dart';

class MapScreenViewModel extends BaseViewModel {
  late LatLng _center;
  bool _getLocationIsSuccess = false;

  LatLng get center => _center;
  bool get getLocationIsSuccess => _getLocationIsSuccess;

  set center(LatLng value) {
    _center = value;
  }

  set getLocationIsSuccess(bool value) {
    _getLocationIsSuccess = value;
  }

  final MapController _mapController = MapController();

  MapController get mapController => _mapController;

  MapScreenViewModel({required BuildContext context});

  Future<void> getCurrentLocation() async {
    loading = true;
    Location location = Location();
    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    locationData = await location.getLocation();

    center = LatLng(locationData.latitude!, locationData.longitude!);

    _mapController.move(
        LatLng(locationData.latitude!, locationData.longitude!), 13.0);

    getLocationIsSuccess = true;
    loading = false;
  }
}
