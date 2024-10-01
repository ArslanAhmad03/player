import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class your_account extends StatefulWidget {
  const your_account({Key? key}) : super(key: key);

  @override
  State<your_account> createState() => _your_accountState();
}

class _your_accountState extends State<your_account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('what'),
      ),
      body: const Center(
        child: Icon(
          Icons.flutter_dash_outlined,
          size: 80,
          color: Colors.green,
        ),
      ),
    );
  }
}
