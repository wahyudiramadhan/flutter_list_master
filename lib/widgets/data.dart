//use this to load data and locate this in a widget

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:list/controllers/datacontroller.dart';

class Data extends GetView<DataController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<DataController>(() => DataController());
    return Scaffold(
      body: controller.obx(
        (data) => Center(
          child: ListView.builder(
            itemCount: data!.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(data[index]['team_A_name']),
                      subtitle: Text(data[index]['team_B_name']),
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(data[index]['team_A_logo']),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
