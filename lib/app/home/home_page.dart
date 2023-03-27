import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller_app.dart';
import 'widgets/button_app.dart';
import 'widgets/container_button.dart';
import 'widgets/container_button2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ControllerApp());
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => GestureDetector(
                onTap: controller.private,
                child: Container(
                  height: 80,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        const Expanded(child: Text('Publico')),
                        Radio(
                          value: controller.isPublic.value,
                          groupValue: true,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() => Visibility(
              visible: controller.isPublic.value,
              child: GestureDetector(
                onTap: controller.private,
                child: ButtonApp(
                    titleButton: 'Privado',
                    valueButton: controller.isPrivate.value),
              ),
            )),
                const SizedBox(
                   height: 20,
                ),
            Obx(() => Visibility(
              visible: controller.isPrivate.value && !controller.isOculteCommunity.value,
              child: ContainerButton(
                oculteCommunity: controller.oculteCommunity,
                isOculteCommunity: controller.isOculteCommunity.value,
                  titleButton: 'Privado',
                  valueButton: controller.isPrivate.value),
            )),
            
            Obx(() => Visibility(
              visible: controller.isPrivate.value && controller.isOculteCommunity.value,
              child: ContainerButton2(
                oculteCommunity: controller.oculteCommunity,
                isOculteCommunity: controller.isOculteCommunity.value,
                  titleButton: 'Privado',
                  valueButton: controller.isPrivate.value),
            )),


          ],
        ),
      ),
    );
  }
}
