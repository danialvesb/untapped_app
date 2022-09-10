import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Untapped',
            style:
                TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),
          ),
          elevation: 0,
          backgroundColor: Theme.of(context).backgroundColor,
        ),
        body: Navigator(
          key: Get.nestedKey(HomeController.NAVIGATOR_KEY),
          onGenerateRoute: controller.onGenerateRoute,
          initialRoute: '/events',
        ),
        bottomNavigationBar: Obx(() {
          return BottomNavigationBar(
            currentIndex: controller.activeIndex,
            onTap: (int index) {
              controller.activeIndex = index;
            },

            selectedItemColor: const Color(0XFFEF574E),
            // backgroundColor: const Color(0XFF181A20),
            items: const [
              BottomNavigationBarItem(
                label: 'Events',
                backgroundColor: Color(0XFF181A20),
                icon: Icon(
                  FontAwesomeIcons.house,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                backgroundColor: Color(0XFF181A20),
                icon: Icon(
                  FontAwesomeIcons.compass,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Marker',
                backgroundColor: Color(0XFF181A20),
                icon: Icon(
                  FontAwesomeIcons.bookmark,
                ),
              ),
              BottomNavigationBarItem(
                label: 'User',
                backgroundColor: Color(0XFF181A20),
                icon: Icon(
                  FontAwesomeIcons.user,
                ),
              ),
            ],
          );
        }));
  }
}
