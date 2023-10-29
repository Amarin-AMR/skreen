import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

// late final customMarkers = <Marker>[
//   buildPin(const LatLng(51.51868093513547, -0.12835376940892318)),
//   buildPin(const LatLng(53.33360293799854, -6.284001062079881)),
// ];

// Marker buildPin(LatLng point) => Marker(
//       point: point,
//       child: const Icon(Icons.location_pin, size: 60, color: Colors.black),
//       width: 60,
//       height: 60,
//     );

LatLng routpoints = const LatLng(8.026808, 98.337384);
List<Marker> marker = [
  const Marker(
    point: LatLng(7.890828289173675, 98.30424716700671), //นาในคลินิกเวชกรรม,
    width: 40,
    height: 40,
    child: Icon(
      Icons.maps_home_work_rounded,
      color: Colors.black,
    ),
  ),
  const Marker(
    point:
        LatLng(7.8589980064878375, 98.34332155244294), //ปัญญรัตน์ คลินิกผิวหนัง
    width: 40,
    height: 40,
    child: Icon(
      Icons.maps_home_work_rounded,
      color: Colors.black,
    ),
  ),
  const Marker(
    point: LatLng(7.872644500641676, 98.38317101727453), //Dr.Pat clinic
    height: 80,
    child: Icon(
      Icons.maps_home_work_rounded,
      color: Colors.black,
    ),
  ),
  const Marker(
    point: LatLng(
        7.879751, 98.383170), //Dr. Pichit Clinic (Dermatologist) Skin Care
    width: 80,
    height: 80,
    child: Icon(
      Icons.maps_home_work_rounded,
      color: Colors.black,
    ),
  ),
  const Marker(
    point: LatLng(7.884574407095963, 98.38104562470512), // ทัศนีย์ คลืนิก
    width: 80,
    height: 80,
    child: Icon(
      Icons.maps_home_work_rounded,
      color: Colors.black,
    ),
  ),
  const Marker(
    point: LatLng(7.8858513682320375, 98.38951855056735), // Veerakiat clinic
    width: 80,
    height: 80,
    child: Icon(
      Icons.maps_home_work_rounded,
      color: Colors.black,
    ),
  ),
  const Marker(
    point: LatLng(7.886074781452594, 98.38967154559724), // คลินิกนายแพทย์จิตติ
    width: 80,
    height: 80,
    child: Icon(
      Icons.maps_home_work_rounded,
      color: Colors.black,
    ),
  ),
  const Marker(
    point: LatLng(
        7.8865991648803035, 98.38591315459715), // หมอณรงค์ คลินิกโรคผิวหนัง
    width: 80,
    height: 80,
    child: Icon(
      Icons.maps_home_work_rounded,
      color: Colors.black,
    ),
  ),
  const Marker(
    point: LatLng(7.896799719859757, 98.38377730910281), // โรงพยาบาลวชิระภูเก็ต
    width: 80,
    height: 80,
    child: Icon(
      Icons.maps_home_work_rounded,
      color: Colors.black,
    ),
  ),
  const Marker(
    point: LatLng(7.902894652991893,
        98.37846178307254), //คลินิกเฉพาะทางผิวหนัง พญ.ภรภัทร์
    height: 80,
    child: Icon(
      Icons.maps_home_work_rounded,
      color: Colors.black,
    ),
  ),
  const Marker(
    point: LatLng(7.909958262465762, 98.34374939962555), //คลินิกผิวหนังกะทู้
    width: 80,
    height: 80,
    child: Icon(
      Icons.maps_home_work_rounded,
      color: Colors.black,
    ),
  ),
  const Marker(
    point: LatLng(7.906873482056285, 98.37215545830979), //เดอมาสลิม คลินิก
    width: 80,
    height: 80,
    child: Icon(
      Icons.maps_home_work_rounded,
      color: Colors.black,
    ),
  ),
  const Marker(
    point: LatLng(
        8.037389785624184, 98.33442820813163), //ถลางรวมแพทย์ thalangpolyclin
    width: 80,
    height: 80,
    child: Icon(
      Icons.maps_home_work_rounded,
      color: Colors.black,
    ),
  ),
];
