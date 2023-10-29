import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';

import 'package:skreen/base/base_viewmodel.dart';
import 'package:skreen/util/image_classification/image_classification_helper.dart';

class GalleryScreenViewModel extends BaseViewModel {
  ImageClassificationHelper? imageClassificationHelper;

  final _imagePicker = ImagePicker();

  String? _imagePath;
  String? get imagePath => _imagePath;
  set imagePath(String? value) {
    _imagePath = value;
  }

  img.Image? _image;
  img.Image? get image => _image;
  set image(img.Image? value) {
    _image = value;
  }

  Map<String, double>? _classification;
  Map<String, double>? get classification => _classification;
  set classification(Map<String, double>? value) {
    _classification = value;
  }

  bool cameraIsAvailable = Platform.isAndroid || Platform.isIOS;

  GalleryScreenViewModel({required BuildContext context});

  Future<void> initImageHelper() async {
    loading = true;
    imageClassificationHelper = ImageClassificationHelper();
    await imageClassificationHelper!.initHelper();
    loading = false;
  }

  void cleanResult() {
    _imagePath = null;
    _image = null;
    classification = null;
  }

  void disposeImageHelper() {
    imageClassificationHelper!.close();
  }

  Future<void> takePicture() async {
    cleanResult();
    loading = true;
    final result = await _imagePicker.pickImage(
      source: ImageSource.camera,
    );

    _imagePath = result?.path;

    processImage();
    loading = false;
  }

  Future<void> choosePicture() async {
    cleanResult();
    loading = true;
    final result = await _imagePicker.pickImage(
      source: ImageSource.gallery,
    );

    _imagePath = result?.path;

    processImage();
    loading = false;
  }

  Future<void> processImage() async {
    if (imagePath != null) {
      loading = true;
      // Read image bytes from file
      final imageData = File(imagePath!).readAsBytesSync();

      // Decode image using package:image/image.dart (https://pub.dev/image)
      _image = img.decodeImage(imageData);

      classification = await imageClassificationHelper?.inferenceImage(image!);
      loading = false;
    }
  }
}
