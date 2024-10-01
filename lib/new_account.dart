import 'package:flutter/material.dart';
import 'package:get/get.dart';

class new_account extends StatelessWidget {
  const new_account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('create new account'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.help_outline_outlined)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextBox(const Icon(Icons.person), 'first name', 'name'),
              const SizedBox(height: 10),
              TextBox(const Icon(Icons.person), 'second name', 'name'),
              const SizedBox(height: 10),
              TextBox(const Icon(Icons.phone), 'number', 'phone'),
              const SizedBox(height: 10),
              TextBox(const Icon(Icons.email_outlined), 'email', 'email'),
              const SizedBox(height: 10),
              TextBox(
                  const Icon(Icons.location_on_outlined), 'address', 'address'),
              const SizedBox(height: 10),
              TextBox(const Icon(Icons.domain_verification_outlined),
                  '6-digit code', 'code'),
              const SizedBox(height: 20),
              ShowBox(context, 'account', 'you create a new account', () {
                Get.back();
              }, const Icon(Icons.check), 'Submit'),
              const SizedBox(height: 10),
              ShowBox(context, 'account', 'sure! you want to cencel', () {
                Get.back();
              }, const Icon(Icons.delete_forever), 'Cancel'),
            ],
          ),
        ),
      ),
    );
  }

  Widget TextBox(Icon icon, String hint, String label) {
    return Container(
      height: 50,
      width: 500,
      // padding: EdgeInsets.only(left: 2,right: 2),
      decoration: const BoxDecoration(
          // borderRadius: BorderRadius.circular(16),
          // color: Colors.black12.withOpacity(.2),
          ),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          icon: icon,
          hintText: hint,
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black),
          helperMaxLines: 1,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }

  Widget ShowBox(context, String title, String content, Function() ontap,
      Icon icon, String actionText) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: Text(title),
                content: Text(content),
                actions: [
                  IconButton(
                    onPressed: ontap,
                    icon: icon,
                  ),
                ],
              ),
            );
          },
          child: Container(
            child: Text(actionText),
          )),
    );
  }
}
