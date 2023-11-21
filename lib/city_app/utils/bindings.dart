import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';

import '../controller/controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Controller());
  }
}
