import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:player/your_account.dart';
import 'your_account.dart';

class login_screen extends StatefulWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      // debugShowCheckedModeBanner: false,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('welcome'),
      actions: [
        IconButton(onPressed: (){
          // Navigator.pop(context);
          TextField();
        },
        icon: Icon(Icons.search_outlined)),
        ],
      ),
      body: LayoutBuilder(
          builder: (BuildContext , BoxConstraints ) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.purpleAccent.withOpacity(.3),
                            Colors.pink.withOpacity(.9),
                          ]
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(height: 1),
                  Container(
                    child: Text('LOGIN NOW',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 3),
                  Container(
                    child: Text('please enter the detail below to continue',style: TextStyle(fontSize: 15)),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.black12.withOpacity(.2),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'name',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.black12.withOpacity(.2),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.visibility),
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                          hintText: 'password',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){},
                        child: Text('forget password',
                          style: TextStyle(color: Colors.red,fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 50,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.black12.withOpacity(.2),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context){
                              return your_account();
                            })
                        );},
                      child: Text(
                        'Login',style: TextStyle(fontSize: 22),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  RichText(text: TextSpan(
                      text: 'Dont have an account!',
                      style: TextStyle(fontSize: 15,color: Colors.black),
                      children: [
                        TextSpan(
                            text: ' Rigister',
                            style: TextStyle(color: Colors.pink,fontSize: 15),
                            recognizer: TapGestureRecognizer()
                              ..onTap= (){}
                        ),
                      ]
                  ),),
                ],),);}),
      drawer: Drawer(
        backgroundColor: Colors.lightGreen,
        width: 250,
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: ListView(
              children: [
                Container(
                  child: UserAccountsDrawerHeader(
                    accountName: Text('arslan'), accountEmail: Text('asd123@gmail.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.pink,
                      // backgroundImage: Image.asset('images/AI.jpg');
                      child: Text(
                        'Ⓐ',style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),
                      ),),
                    currentAccountPictureSize: Size.square(80),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text('account'),
                  subtitle: Text('new'),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.login_outlined),
                  title: Text('login'),
                  subtitle: Text('new'),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.category_outlined),
                  title: Text('category'),
                  subtitle: Text('new'),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.login_outlined),
                  title: Text('login'),
                  subtitle: Text('new'),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.login_outlined),
                  title: Text('login'),
                  subtitle: Text('new'),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                AboutListTile(
                  icon: Icon(Icons.info_outline),
                  child: Text('About App'),
                  applicationName: 'My Cool App',
                  applicationIcon: Icon(Icons.local_police_outlined,size: 40,),
                  applicationVersion: '1.0.25',
                  applicationLegalese: 'this @ company',
                  aboutBoxChildren: [
                    Text('ListView is the most commonly used scrolling widget.'),
                  ],
                )
              ],
          ),
        ),
      ),
    );
  }
}
