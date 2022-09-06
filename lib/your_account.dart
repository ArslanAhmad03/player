import 'package:flutter/material.dart';
import 'package:player/login_screen.dart';
import 'package:player/your_account.dart';

class your_account extends StatefulWidget {
  const your_account({Key? key}) : super(key: key);

  @override
  State<your_account> createState() => _your_accountState();
}

class _your_accountState extends State<your_account> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('what'),
          leading: GestureDetector(
            child: Icon(Icons.arrow_back_ios_new),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          child: Center(
            child: Icon(
              Icons.flutter_dash_outlined,size: 80,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}

