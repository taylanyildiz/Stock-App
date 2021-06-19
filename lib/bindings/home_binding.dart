import 'package:get/get.dart';
import '../controllers/controller.dart';

class HomeBinding with Bindings {
  @override
  void dependencies() async {
    Get.put(HomeScreenController());
    Get.put(TopSideController());
    Get.put(LeftSideController());
    Get.put(BottomSideController());
    Get.put(TableSideController());
  }
}
