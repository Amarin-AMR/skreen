/*
 * Copyright 2023 The TensorFlow Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *             http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:skreen/base/base_screen.dart';
import 'package:skreen/features/gallery/viewmodel.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      viewmodel: GalleryScreenViewModel(context: context),
      onInit: (model) => model.initImageHelper(),
      onDispose: (model) => model.disposeImageHelper(),
      builder: ((context, model, child) {
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
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (model.cameraIsAvailable)
                      TextButton.icon(
                        onPressed: () async {
                          await model.takePicture();
                        },
                        icon: const Icon(
                          Icons.camera,
                          size: 48,
                        ),
                        label: Text(
                          tr('app.gallery.photo'),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.inverseSurface,
                          ),
                        ),
                      ),
                    TextButton.icon(
                      onPressed: () async {
                        await model.choosePicture();
                      },
                      icon: const Icon(
                        Icons.photo,
                        size: 48,
                      ),
                      label: Text(
                        tr('app.gallery.imagePicker'),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inverseSurface,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(color: Colors.black),
                Expanded(
                    child: Stack(
                  alignment: Alignment.center,
                  children: [
                    if (model.imagePath != null)
                      Image.file(
                        File(model.imagePath!),
                      ),
                    if (model.image == null)
                      Text(
                        tr('app.gallery.title'),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inverseSurface,
                        ),
                      ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Show classification result
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              if (model.classification != null)
                                ...(model.classification!.entries.toList()
                                      ..sort(
                                        (a, b) => a.value.compareTo(b.value),
                                      ))
                                    .reversed
                                    .take(4)
                                    .map(
                                      (e) => Container(
                                        padding: const EdgeInsets.all(8),
                                        child: Row(
                                          children: [
                                            Text(e.key),
                                            const Spacer(),
                                            Text(e.value.toStringAsFixed(6))
                                          ],
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
              ],
            ),
          ),
        );
      }),
    );
  }
}
