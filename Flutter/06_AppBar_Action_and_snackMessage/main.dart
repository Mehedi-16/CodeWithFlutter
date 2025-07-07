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
      body: const Center(child: Text("Welcome to HomeActivity!")),
    );
  }
}
