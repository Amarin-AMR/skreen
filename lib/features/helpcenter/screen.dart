import 'package:flutter/material.dart';
import 'package:skreen/base/base_screen.dart';
import 'package:skreen/features/bottombar/screen.dart';

import 'package:skreen/features/helpcenter/viewmodel.dart';
import 'package:skreen/navigation/navigation_constants.dart';
import 'package:skreen/navigation/route_manager.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen<HelpCenterViewModel>(
      viewmodel: HelpCenterViewModel(),
      onInit: (viewmodel) {
        viewmodel.initializePageController();
      },
      builder: (context, viewmodel, child) {
        return Scaffold(
          body: SafeArea(
            child: Stack(
              children: <Widget>[
                PageView.builder(
                  controller: viewmodel.pageViewController,
                  itemCount: viewmodel.slides.length,
                  itemBuilder: (BuildContext context, int index) {
                    return viewmodel.slides[index];
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 70.0),
                    padding: const EdgeInsets.symmetric(vertical: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: viewmodel.indicator(),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.only(bottom: 60),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: Colors.orange,
                    ),
                    child: const Text('Begin'),
                    onPressed: () async {
                      AppNav.toNamed(context, AppNavConstants.BOTTOMAPPBAR);

                      // Navigator.push(
                      //   context,
                      //   PageRouteBuilder(
                      //     pageBuilder:
                      //         (context, animation, secondaryAnimation) =>
                      //              const BottomAppBar(),
                      //     transitionsBuilder:
                      //         (context, animation, secondaryAnimation, child) {
                      //       const begin = Offset(0.0, 1.0);
                      //       const end = Offset.zero;
                      //       const curve = Curves.ease;

                      //       var tween = Tween(begin: begin, end: end)
                      //           .chain(CurveTween(curve: curve));

                      //       return SlideTransition(
                      //         position: animation.drive(tween),
                      //         child: child,
                      //       );
                      //     },
                      //   ),
                      // );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
