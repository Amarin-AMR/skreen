import 'package:flutter/material.dart';
import 'package:skreen/base/base_viewmodel.dart';
import 'package:skreen/model/cardmodel/items.dart';

class HelpCenterViewModel extends BaseViewModel {
  List<Widget> slides = [];
  double currentPage = 0.0;
  final PageController pageViewController = PageController();

  HelpCenterViewModel() {
    slides = items.map((item) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      item['header'],
                      style: const TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w300,
                        color: Color(0XFF3F3D56),
                        height: 2.0,
                      ),
                    ),
                    Text(
                      item['description'],
                      style: const TextStyle(
                        color: Colors.grey,
                        letterSpacing: 1.2,
                        fontSize: 16.0,
                        height: 1.3,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }).toList();
  }

  void initializePageController() {
    pageViewController.addListener(() {
      currentPage = pageViewController.page!;
      notifyListeners(); // Notify listeners to rebuild when page changes
    });
  }

  List<Widget> indicator() {
    return List<Widget>.generate(
      slides.length,
      (index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 3.0),
        height: 10.0,
        width: 10.0,
        decoration: BoxDecoration(
          color: currentPage.round() == index
              ? const Color(0XFF256075)
              : const Color(0XFF256075).withOpacity(0.2),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }
}
