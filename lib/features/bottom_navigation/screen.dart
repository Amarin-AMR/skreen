import 'dart:io';

import 'package:camera/camera.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:skreen/base/base_screen.dart';
import 'package:skreen/features/bottom_navigation/viewmodel.dart';
import 'package:skreen/features/camera/screen.dart';
import 'package:skreen/features/gallery/screen.dart';

class BottomNavigationBarApp extends StatefulWidget {
  const BottomNavigationBarApp({super.key});

  @override
  State<BottomNavigationBarApp> createState() => _BottomNavigationBarAppState();
}

class _BottomNavigationBarAppState extends State<BottomNavigationBarApp> {
  late CameraDescription cameraDescription;

  List<Widget>? _widgetOptions;

  bool cameraIsAvailable = Platform.isAndroid || Platform.isIOS;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initPages();
    });
  }

  initPages() async {
    _widgetOptions = [const GalleryScreen()];

    if (cameraIsAvailable) {
      // get list available camera
      cameraDescription = (await availableCameras()).first;
      _widgetOptions!.add(CameraScreen(camera: cameraDescription));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      builder: ((context, viewmodel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              tr('app.title'),
              style: TextStyle(
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextButton(
                  child: Text(
                    tr('app.changeLang'),
                    style: const TextStyle(color: Colors.white),
                  ),
                  onPressed: () => setState(() {
                    if (context.locale.languageCode == 'en') {
                      context.setLocale(const Locale('th'));
                    } else {
                      context.setLocale(const Locale('en'));
                    }
                  }),
                ),
              ),
            ],
            backgroundColor: Colors.black.withOpacity(0.5),
          ),
          body: Center(
            child: _widgetOptions?.elementAt(viewmodel.selectIndex ?? 0),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: const Icon(Icons.image),
                label: tr('app.bottomNavigation.gallery'),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.camera),
                label: tr('app.bottomNavigation.camera'),
              ),
            ],
            currentIndex: viewmodel.selectIndex ?? 0,
            selectedItemColor: Colors.amber[800],
            onTap: viewmodel.onItemTapped,
          ),
        );
      }),
      viewmodel: BottomNavigationViewModel(context: context),
    );
  }
}
