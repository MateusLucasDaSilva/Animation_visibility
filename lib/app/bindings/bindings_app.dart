import 'package:get/get.dart';

import '../controller/controller_app.dart';


class BindingsApp implements Bindings {
  @override
  void dependencies() {
    Get.put<ControllerApp>( ControllerApp());
  }
}
