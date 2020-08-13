import 'package:flutter/material.dart';
import 'package:sibo_project/data2.dart';
import 'package:sibo_project/services/app.dart';
import 'package:sibo_project/services/restaurant_page.dart';
import 'package:sibo_project/socialconnect.dart';
import 'package:sibo_project/socialicon.dart';
import 'datafetch.dart';
import 'fetch.dart';
import 'get.dart';
import 'image.dart';
import 'home.dart';
import 'homepage.dart';
import 'quiz1.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final List<Widget> _children = [
    SocialConnect(),
    Words(),
    ImageCarousel(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: new AppBar(
        backgroundColor: Colors.orange[300],
        title: Text(
          'Sibo',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.message,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Test'),
              accountEmail: Text('test@test.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.orange[100],
              ),
            ),

            // body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.indigo[900]),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.red),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blue),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.green),
              ),
            ),
          ],
        ),
      ),
      body: new Stack(
        children: <Widget>[
          new Offstage(
            offstage: index != 0,
            child: new TickerMode(
              enabled: index == 0,
              child: new MaterialApp(
                home: Home(),
              ),
            ),
          ),
          new Offstage(
            offstage: index != 1,
            child: new TickerMode(
              enabled: index == 1,
              child: new MaterialApp(
                home: Words(),
              ),
            ),
          ),
          new Offstage(
            offstage: index != 2,
            child: new TickerMode(
              enabled: index == 2,
              child: new MaterialApp(
                home: Example(),
              ),
            ),
          ),
          new Offstage(
            offstage: index != 3,
            child: new TickerMode(
              enabled: index == 3,
              child: new MaterialApp(
                home: SocialConnect(),
              ),
            ),
          ),
          new Offstage(
            offstage: index != 4,
            child: new TickerMode(
              enabled: index == 4,
              child: new MaterialApp(
                home: Quiz1(),
              ),
            ),
          ),
          new Offstage(
            offstage: index != 5,
            child: new TickerMode(
              enabled: index == 5,
              child: new MaterialApp(
                home: FetchApp(),
              ),
            ),
          ),
          new Offstage(
            offstage: index != 6,
            child: new TickerMode(
              enabled: index == 6,
              child: new MaterialApp(
                home: AMyApp(),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.orange[300],
        fixedColor: Colors.red[900],
        iconSize: 40,
        selectedFontSize: 10,
        unselectedFontSize: 08,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('Home'),
            backgroundColor: Colors.orange[300],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('We are'),
            backgroundColor: Colors.black26,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('Our Story'),
            backgroundColor: Colors.blue[300],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('Blogs'),
            backgroundColor: Colors.green[300],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_filled),
            title: Text('Survey'),
            backgroundColor: Colors.red[300],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Signup/Signin'),
            backgroundColor: Colors.pink[300],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text('Contact us'),
            backgroundColor: Colors.purple[300],
          ),
        ],
      ),
    );
  }
}
