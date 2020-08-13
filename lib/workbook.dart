import 'package:flutter/material.dart';
import 'package:sibo_project/socialconnect.dart';
import 'package:sibo_project/socialicon.dart';
import 'homepage.dart';

void main(){
 runApp(
   MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomePage(),
     
   )

 );
 }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  
}
class _HomePageState extends State<HomePage> {
   int index = 0;
   final List<Widget> _children  = [
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
                   
                   title: Text('Sibo',style: TextStyle(color: Colors.black26, fontSize: 25,),), 
                                     
                   centerTitle: true,
                   actions: <Widget>[
                     new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
                     new IconButton(icon: Icon(Icons.message, color: Colors.white,), onPressed: (){}),
                     new IconButton(icon: Icon(Icons.notifications, color: Colors.white,), onPressed: (){})
                   ],
                  
                    ),
                    drawer: new Drawer(
                      child: new ListView(
                        children: <Widget>[
                           
                        new UserAccountsDrawerHeader(
                          accountName: Text('Yogesh'), 
                          accountEmail: Text('test@test.com'),
                        currentAccountPicture: GestureDetector(
                          child: new CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Icon(Icons.person, color: Colors.white,),
                          ),
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.orange[100],
                        ),
                          ),  
                        
                            // body
                      InkWell(
                        onTap: (){},
                        child: ListTile(
                          title: Text('Home Page'),
                          leading: Icon(Icons.home, color: Colors.indigo[900]),
                        ),
                      ),
                       InkWell(
                        onTap: (){},
                        child: ListTile(
                          title: Text('My Account'),
                          leading: Icon(Icons.person, color: Colors.red),
                        ),
                      ), InkWell(
                        onTap: (){},
                        child: ListTile(
                          title: Text('My Orders'),
                          leading: Icon(Icons.shopping_basket, color: Colors.red),
                        ),
                      ), InkWell(
                        onTap: (){},
                        child: ListTile(
                          title: Text('Categories'),
                          leading: Icon(Icons.dashboard, color: Colors.red),
                        ),
                      ), InkWell(
                        onTap: (){},
                        child: ListTile(
                          title: Text('Favourites'),
                          leading: Icon(Icons.favorite, color: Colors.red),
                        ),
                      ),
                      Divider(),
                       InkWell(
                        onTap: (){},
                        child: ListTile(
                          title: Text('Settings'),
                          leading: Icon(Icons.settings, color: Colors.blue),
                        ),
                      ),
                       InkWell(
                        onTap: (){},
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
            child: new MaterialApp(home: SocialConnect(),
    ),
          ),
        ),
        new Offstage(
          offstage: index != 1,
          child: new TickerMode(
            enabled: index == 1,
            child: new MaterialApp(home: 
     Words(),
     
     ),
          ),
        ),
      ],
    ),
    bottomNavigationBar: new BottomNavigationBar(
      currentIndex: index,
      onTap: (int index) { setState((){ this.index = index; }); },
      items: <BottomNavigationBarItem>[
        new BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text("Left"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.search),
          title: new Text("Right"),
        ),
      ],
    ),
                  
                       );
                    
                    }
                  
                  }
                  
             
      