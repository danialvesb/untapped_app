import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untapped_app/app/modules/discover/discover_bindings.dart';
import 'package:untapped_app/app/modules/discover/discover_page.dart';
import 'package:untapped_app/app/modules/events/events_bindings.dart';
import 'package:untapped_app/app/modules/events/events_page.dart';

class HomeController extends GetxController {
  static const NAVIGATOR_KEY = 1;

  final _routes = [
    '/events',
    '/discover',
  ];
  final _activeIndex = 0.obs;

  int get activeIndex => _activeIndex.value;

  set activeIndex(int index) {
    _activeIndex(index);

    Get.toNamed(_routes[index], id: NAVIGATOR_KEY);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    log(settings.name ?? 'null');

    if (settings.name == '/events') {
      return GetPageRoute(
        settings: settings,
        page: () => const EventsPage(),
        binding: EventsBindings(),
        transition: Transition.fadeIn,
      );
    }

    if (settings.name == '/discover') {
      return GetPageRoute(
        settings: settings,
        page: () => const DiscoverPage(),
        binding: DiscoverBindings(),
        transition: Transition.fadeIn,
      );
    }

    return null;
  }
}
