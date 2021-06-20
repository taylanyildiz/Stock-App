import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/localization/localization.dart';
import 'package:stock_app/route_management.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: Get.locale ?? const Locale('tr'),
      translations: Localization(),
      initialRoute: RouteManagement.initialRoute,
      getPages: RouteManagement.routeList,
    );
  }
}
