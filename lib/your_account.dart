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
    return login_screen();
  }
}

