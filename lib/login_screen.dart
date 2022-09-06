import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:player/free_demo.dart';
import 'package:player/new_account.dart';
import 'package:player/your_account.dart';

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
        title: Text('Media Player'),
      actions: [
        IconButton(onPressed: (){
          // Navigator.pop(context);
          TextField(decoration: InputDecoration(hintText: 'help'),);
        },
        icon: Icon(Icons.help_outline_outlined)),
        IconButton(onPressed: (){
          // Navigator.pop(context);
          TextField(decoration: InputDecoration(hintText: 'info'),);
        },
            icon: Icon(Icons.info_outline)),
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
                       width: 300,
                       margin: EdgeInsets.only(top: 5),
                       decoration: BoxDecoration(
                  image: DecorationImage(
                  image: NetworkImage('https://i.pinimg.com/736x/be/79/d0/be79d0c8fb22c9ed3f9962d53dd0849a.jpg'),
                    fit: BoxFit.fill,
                  ),
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
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){},
                          child: Text('forget password',
                            style: TextStyle(color: Colors.red,fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
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
                        'Sign In',style: TextStyle(fontSize: 22),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: 500,
                    margin: EdgeInsets.symmetric(horizontal: 40.0),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context){
                            return new_account();
                      }),
                      );
                    },
                        child: Text('Sign Up',style: TextStyle(fontSize: 22),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  RichText(text: TextSpan(
                      text: 'Using Without an account!',
                      style: TextStyle(fontSize: 15,color: Colors.black),
                      children: [
                        TextSpan(
                            text: ' Free Demo',
                            style: TextStyle(color: Colors.pink,fontSize: 15),
                            recognizer: TapGestureRecognizer()
                              ..onTap= (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context){
                                    return free_demo();
                                  }
                              ),);
                              }
                        ),
                      ]
                  ),),
                ],),);}),
      drawer: Drawer(
        backgroundColor: Colors.lightGreen,
        width: 250,
        child: ListView(
            children: [
              Container(
                child: UserAccountsDrawerHeader(
                  accountName: Text('arslan'),
                  accountEmail: Text('asd123@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    child: ClipOval(
                      child: Image(
                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuT_wu3cGS8vFdoOo0sgabhd1qJGWRpWjOlg&usqp=CAU'),
                        fit: BoxFit.cover,
                      ),),),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://images.unsplash.com/photo-1590166805204-edcddb7305c0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZXZlbmluZyUyMHN1bnxlbnwwfHwwfHw%3D&w=1000&q=80'),
                   fit: BoxFit.cover,
                    ),
                  ),
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
              ),
            ],
        ),
      ),
    );
  }
}
