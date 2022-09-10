import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:untapped_app/app/app_bindings.dart';
import 'package:untapped_app/app/app_page.dart';

import 'home_routers.dart';

class AppRouters {
  AppRouters._();

  static final routers = [
    GetPage(
      name: '/',
      binding: AppBindings(),
      page: () => const AppPage(),
    ),
    ...HomesRouters.routers,
    // ...SplashRouters.routers,
    // ...PresentationRouters.routers,
    // ...AuthRouters.routers,
    // ...ProfileRouters.routers,
  ];
}
