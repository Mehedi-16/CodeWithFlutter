import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
      ),
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});


  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(content: Text(message))

    );

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:  Text("Home Screen"),
          titleSpacing: 0,
           toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(onPressed:(){MySnackBar("I am Messenger",context);}, icon: Icon(Icons.message)),
          IconButton(onPressed:(){MySnackBar("I am call",context);}, icon: Icon(Icons.call)),
          IconButton(onPressed:(){MySnackBar("I am email",context);}, icon: Icon(Icons.email)),
          IconButton(onPressed:(){MySnackBar("I am notifications",context);}, icon: Icon(Icons.notifications)),
          
        ],

      ),
      floatingActionButton:FloatingActionButton(
        elevation: 10 ,
        backgroundColor: Colors.cyan,
        child: Icon(Icons.add),
        onPressed: (){
          MySnackBar("I'm FloatingAction",context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon:Icon(Icons.message),label: "Contact"),
          BottomNavigationBarItem(icon:Icon(Icons.person),label: "Profile"),
        ],

        onTap: (int index){
          if(index==0)
            {
              MySnackBar("Im Home",context);
            }
          if(index==1)
          {
            MySnackBar("Im contact",context);
          }
          if(index==2)
          {
            MySnackBar("Im profile",context);
          }

        }
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.cyan),
                accountName: Text(
                  "Mehedi",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "mehedimamun604@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://i.imgur.com/QCNbOAo.png',
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackBar("I'm Home", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("Message"),
              onTap: () {
                MySnackBar("I'm Message", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                MySnackBar("I'm Settings", context);
              },
            ),
          ],
        ),
      ),




      body: const Center(child: Text("Welcome to HomeActivity!")),
    );
  }
}
