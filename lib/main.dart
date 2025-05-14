import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meet_singles/App/Chat/controller/chat_controller.dart';
import 'package:meet_singles/App/Matches/controller/matches_controller.dart';
import 'package:meet_singles/config/theme/app_color.dart';
import 'App/Dashboard/controller/dashboard_controller.dart';
import 'App/Filter/controller/filter_controller.dart';
import 'config/routes/app_pages.dart';
import 'config/routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(FilterController()); // Register the controller globally
  Get.put(MatchesController());
  Get.put(ChatController());
  Get.put(DashboardController());

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: const Size(360, 800),
      builder: ((context, child) => GetMaterialApp(
            title: 'Blumdate',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
              scaffoldBackgroundColor: AppColor.backgroundColor,
              appBarTheme: AppBarTheme(color: AppColor.backgroundColor),
            ),
            // initialRoute: AppPages.initial,
            initialRoute: Routes.initial,
            getPages: AppPages.pages,
          )),
    );
  }
}
