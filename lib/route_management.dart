import 'package:get/get.dart';
import 'screens/screen.dart';
import 'bindings/binding.dart';

class RouteManagement {
  RouteManagement._();

  static const String initialRoute = '/HomeScreen';
  static final List<GetPage> routeList = [
    GetPage(
      name: '/HomeScreen',
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
