import 'package:get/route_manager.dart';

import '../modules/home/home_bindings.dart';
import '../modules/home/home_page.dart';

class HomesRouters {
  HomesRouters._();

  static final routers = <GetPage>[
    GetPage(
      name: '/home',
      binding: HomeBindings(),
      page: () => const HomePage(),
    ),
  ];
}
