import 'package:get/get.dart';
import 'package:list/controllers/datacontroller.dart';

class DataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DataController());
  }
}
