import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:untapped_app/app/routers/app_routers.dart';
import './app_controller.dart';
import 'core/theme/app_theme_ui.dart';

class AppPage extends GetView<AppController> {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contrate online',
      // initialBinding: ApplicationBinding(),
      theme: AppThemeUi.theme,
      initialRoute: '/home',
      getPages: AppRouters.routers,
    );
  }
}
