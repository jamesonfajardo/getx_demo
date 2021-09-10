import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_ui/model/getx1.dart';
import 'package:state_management_ui/model/getx2.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Getx1 getx1 = Get.find<Getx1>();
    Getx2 getx2 = Get.find<Getx2>();

    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(),
          Obx(() => Text('${getx1.string}')),
          SizedBox(height: 16),
          Obx(() => Text('${getx2.string}')),
          SizedBox(height: 16),
          FractionallySizedBox(
            widthFactor: 0.9,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                hintText: 'Type something..',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
              onChanged: (newValue) {
                getx1.string.value = newValue;
                getx2.string.value = newValue;
              },
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/page3');
            },
            child: Text('Go down the widget tree'),
          ),
        ],
      ),
    );
  }
}
