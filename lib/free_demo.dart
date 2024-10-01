import 'package:flutter/material.dart';
import 'package:get/get.dart';

class free_demo extends StatelessWidget {
  const free_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add List'),
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {
            Get.back();
          },
        ),
      ),
      body: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                height: 50,
                width: 400,
                padding: const EdgeInsets.only(left: 5, right: 5),
                margin: const EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black38,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.add_circle), border: InputBorder.none),
                ),
              ),
            );
          }),
    );
  }
}
