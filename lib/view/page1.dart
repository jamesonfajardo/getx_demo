import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_ui/model/getx1.dart';
import 'package:state_management_ui/model/getx2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Getx1 getx1 = Get.put(Getx1());
    Getx2 getx2 = Get.put(Getx2());

    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(),
          Obx(() => Text('${getx1.string}')),
          SizedBox(height: 16),
          Obx(() => Text('${getx2.string}')),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/page2'); // navigator.push
            },
            child: Text('Go down the widget tree'),
          ),
        ],
      ),
    );
  }
}
