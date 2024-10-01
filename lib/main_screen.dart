import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:player/free_demo.dart';
import 'package:player/new_account.dart';
import 'package:player/your_account.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Player'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.help_outline_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline)),
        ],
      ),
      body: LayoutBuilder(builder: (BuildContext, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: width * 0.9,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.pinimg.com/736x/be/79/d0/be79d0c8fb22c9ed3f9962d53dd0849a.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 1),
            const Text('LOGIN NOW',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 3),
            const Text('please enter the detail below to continue',
                style: TextStyle(fontSize: 12)),
            const SizedBox(height: 10),
            TextBox('name', false),
            const SizedBox(height: 10),
            TextBox('password', true),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'forget password',
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            ButtonBox('Sign In', () {
              Get.to(() => your_account());
            }),
            const SizedBox(height: 10),
            ButtonBox('Sign Up', () {
              Get.to(() => new_account());
            }),
            RichText(
              text: TextSpan(
                  text: 'Using Without an account!',
                  style: const TextStyle(fontSize: 15, color: Colors.black),
                  children: [
                    TextSpan(
                        text: ' Free Demo',
                        style:
                            const TextStyle(color: Colors.pink, fontSize: 15),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(() => free_demo());
                          }),
                  ]),
            ),
          ],
        );
      }),
      drawer: Drawer(
        backgroundColor: Colors.lightGreen,
        width: 250,
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('arslan'),
              accountEmail: Text('asd123@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuT_wu3cGS8vFdoOo0sgabhd1qJGWRpWjOlg&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1590166805204-edcddb7305c0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZXZlbmluZyUyMHN1bnxlbnwwfHwwfHw%3D&w=1000&q=80'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            DrawerList(Icon(Icons.dashboard), 'Dashboard', 'Dashboard', () {
              Get.back();
            }),
            DrawerList(Icon(Icons.account_circle_rounded), 'account', 'account',
                () {
              Get.back();
            }),
            DrawerList(Icon(Icons.category_outlined), 'category', 'category',
                () {
              Get.back();
            }),
            DrawerList(Icon(Icons.help), 'help', 'help', () {
              Get.back();
            }),
            DrawerList(Icon(Icons.login_outlined), 'logout', 'login', () {
              Get.back();
            }),
            const AboutListTile(
              icon: Icon(Icons.info_outline),
              applicationName: 'My Cool App',
              applicationIcon: Icon(
                Icons.local_police_outlined,
                size: 40,
              ),
              applicationVersion: '1.0.25',
              applicationLegalese: 'this @ company',
              aboutBoxChildren: [
                Text('ListView is the most commonly used scrolling widget.'),
              ],
              child: Text('About App'),
            ),
          ],
        ),
      ),
    );
  }

  Widget TextBox(String hint, bool value) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.black12.withOpacity(.2),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TextField(
          obscureText: value,
          decoration: InputDecoration(
            suffixIcon: value == true
                ? IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.visibility),
                    color: Colors.grey,
                  )
                : null,
            border: InputBorder.none,
            hintText: hint,
          ),
          keyboardType: TextInputType.number,
        ),
      ),
    );
  }

  Widget ButtonBox(String title, Function() ontap) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      margin: const EdgeInsets.symmetric(horizontal: 40.0),
      child: ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }

  Widget DrawerList(
      Icon icon, String title, String subTitle, Function() ontap) {
    return ListTile(
        leading: icon,
        title: Text(title),
        subtitle: Text(subTitle),
        onTap: ontap);
  }
}
