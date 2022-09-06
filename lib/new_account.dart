import 'package:flutter/material.dart';
import 'package:player/login_screen.dart';

class new_account extends StatelessWidget {
  const new_account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: Text('create new account'),
          actions: [
            IconButton(onPressed: (){},
                icon: Icon(Icons.help_outline_outlined)),
          ],
          leading: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return login_screen();
                }));
          },
              icon: Icon(Icons.arrow_back_ios_new),),
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 500,
                  // padding: EdgeInsets.only(left: 2,right: 2),
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(16),
                    // color: Colors.black12.withOpacity(.2),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'first name',
                    labelText: 'name',
                    labelStyle: TextStyle(color: Colors.red),
                    helperMaxLines: 1,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),),),),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: 500,
                  // padding: EdgeInsets.only(left: 2,right: 2),
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(16),
                    // color: Colors.black12.withOpacity(.2),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'second name',
                      labelText: 'name',
                      labelStyle: TextStyle(color: Colors.red),
                      helperMaxLines: 1,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),),),),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: 500,
                  // padding: EdgeInsets.only(left: 2,right: 2),
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(16),
                    // color: Colors.black12.withOpacity(.2),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.phone),
                      hintText: 'number',
                      labelText: 'phone',
                      labelStyle: TextStyle(color: Colors.red),
                      helperMaxLines: 1,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),),),),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: 500,
                  // padding: EdgeInsets.only(left: 2,right: 2),
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(16),
                    // color: Colors.black12.withOpacity(.2),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email_outlined),
                      hintText: 'email',
                      labelText: 'email',
                      labelStyle: TextStyle(color: Colors.red),
                      helperMaxLines: 1,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),),),),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: 500,
                  // padding: EdgeInsets.only(left: 2,right: 2),
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(16),
                    // color: Colors.black12.withOpacity(.2),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.location_on_outlined),
                      hintText: 'address',
                      labelText: 'address',
                      labelStyle: TextStyle(color: Colors.red),
                      helperMaxLines: 1,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),),),),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: 500,
                  // padding: EdgeInsets.only(left: 2,right: 2),
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(16),
                    // color: Colors.black12.withOpacity(.2),
                  ),
                  margin: EdgeInsets.only(left: 28,right: 150),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.domain_verification_outlined),
                      hintText: '6-digit code',
                      labelText: 'code',
                      labelStyle: TextStyle(color: Colors.red),
                      helperMaxLines: 1,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),),),
                    keyboardType: TextInputType.number,
                  ),),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  width: 500,
                  margin: EdgeInsets.only(left: 30,right: 30),
                  child: ElevatedButton(onPressed: (){
                    showDialog(
                        context: context,
                        builder: (ctx)=>
                          AlertDialog(
                            title: Text('account'),
                            content: Text('you create a new account'),
                            actions: [
                              IconButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context){
                                      return login_screen();
                                    }
                                ));
                              },
                                  icon: Icon(Icons.check),
                              ),
                            ],
                          ),
                    );
                  },
                      child: Container(
                    color: Colors.blue,
                        child: Text('Submit'),
                  )
                  ),),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: 500,
                  margin: EdgeInsets.only(left: 30,right: 30),
                  child: ElevatedButton(onPressed: (){
                    showDialog(
                      context: context,
                      builder: (ctx)=>
                          AlertDialog(
                            title: Text('account'),
                            content: Text('sure! you want to cencel'),
                            actions: [
                              IconButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context){
                                      return login_screen();
                                    }));},
                                icon: Icon(Icons.delete_forever),
                              ),],),);
                  },
                      child: Container(
                        color: Colors.blue,
                        child: Text('Cencel'),
                      )
                  ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
