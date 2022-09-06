import 'package:flutter/material.dart';

class free_demo extends StatelessWidget {
  const free_demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Add List'),
          leading: GestureDetector(
              child: Icon(Icons.arrow_back_ios),
          onTap: (){
                Navigator.pop(context);
          },
          ),
        ),
        body: SafeArea(
            child: ListView(
              reverse: true,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.symmetric(vertical:10),
              children: [
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.add_circle),
                        border: InputBorder.none
                    ),
                  ),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.add_circle),
                        border: InputBorder.none
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.add_circle),
                        border: InputBorder.none
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.add_circle),
                        border: InputBorder.none
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.add_circle),
                        border: InputBorder.none
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.add_circle),
                        border: InputBorder.none
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.add_circle),
                        border: InputBorder.none
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.add_circle),
                        border: InputBorder.none
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.add_circle),
                        border: InputBorder.none
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.add_circle),
                        border: InputBorder.none
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.add_circle),
                        border: InputBorder.none
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.add_circle),
                        border: InputBorder.none
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.add_circle),
                        border: InputBorder.none
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.add_circle),
                        border: InputBorder.none
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.add_circle),
                        border: InputBorder.none
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.only(left: 5,right: 5),
                  margin: EdgeInsets.only(left: 5,right: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.add_circle),
                        border: InputBorder.none
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
