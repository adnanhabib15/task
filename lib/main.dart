import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/profile.dart';

import 'home.dart';
import 'provider.dart';


void main() {
  runApp(  ChangeNotifierProvider(create: (_)=>Formvalidation(),child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        textTheme:  TextTheme(bodyText2: TextStyle(fontSize:30),
        ),),


      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Home(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const Profile(),
      },

    );
  }
}
