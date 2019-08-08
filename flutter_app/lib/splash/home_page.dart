import 'package:flutter/material.dart';
import 'package:flutter_app/login/signin_page.dart';
import 'package:flutter_app/model/user.dart';
import 'package:flutter_app/pages/about_us.dart';
import 'package:flutter_app/pages/expense.dart';
import 'package:flutter_app/pages/grocery.dart';
import 'package:flutter_app/pages/task.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  UserDetails userDetails;

  HomePage(this.userDetails);

  @override
  State<StatefulWidget> createState() {
    return HomePageState(userDetails);
  }
}

class HomePageState extends State<HomePage> {
  UserDetails userDetails;

  HomePageState(this.userDetails);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(userDetails.userName),
              accountEmail: Text(userDetails.eMailAdress),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(userDetails.photoUrl),
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://images.pexels.com/photos/1764702/pexels-photo-1764702.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"))),
            ),
            ListTile(
              leading: getImage("task.png"),
              title: Text("Task"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TaskPage()));
              },
            ),
            ListTile(
              leading: getImage("grocery.png"),
              title: Text("Grocery"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GroceryPage()));
              },
            ),
            ListTile(
              leading: getImage("expense.png"),
              title: Text("Expences"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExpencePage()));
              },
            ),
            ListTile(
              leading: getImage("aboutus.png"),
              title: Text("About us"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUs()));
              },
            ),
            ListTile(
              leading: getImage("signout.png"),
              title: Text("Sign out"),
              onTap: () => logOutUser(),
            ),
            Container(
              height: 150.0,
            ),
            ListTile(
              title: Text(
                "Version 1.0.0",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
              child: Text(
                  "This is HomePage need to implement navigation drawer and and some funtionality")),
        ),
      ),
    );
  }

  Widget getImage(String imageName) {
    AssetImage assetImage = AssetImage("images/$imageName");
    Image image = Image(width: 48.0, height: 48.0, image: assetImage);
    return Container(
      width: 50.0,
      height: 50.0,
      child: image,
    );
  }

  Future<bool> logOutUser() async {
    Navigator.of(context).pop();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SignInPage()));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userName', "");
    await prefs.setString('eMailAdress', "");
    await prefs.setString('photoUrl', "");
    await prefs.setString('loginMode', "");
    return prefs.commit();
  }
}
