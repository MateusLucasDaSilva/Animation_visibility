import 'package:get/get.dart';

class ControllerApp extends GetxController {
  final RxBool isPublic = true.obs;
  final RxBool isPrivate = false.obs;
  final RxDouble height = 80.00.obs;
  final RxDouble width = 300.00.obs;
  final RxBool isOculteCommunity = false.obs;

  void oculteCommunity() {
    isOculteCommunity.value = !isOculteCommunity.value;
  }

  void private() {
    isPublic.value = !isPublic.value;
    isPrivate.value = !isPrivate.value;
  }

  void aumentar() {
    height.value = 300.0;
  }
}
