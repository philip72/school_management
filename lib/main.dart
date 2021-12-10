import 'package:flutter/material.dart';
import 'package:school_management/authenticationPage/authenticationpage.dart';
import 'package:school_management/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Init.instance.initialize(),
        builder: (context, AsyncSnapshot snapshot){
          if (snapshot.connectionState== ConnectionState.waiting){
            return const MaterialApp(home: Splash());
          }else{
            return const MaterialApp(
              title: 'School Management ',
              home: Authentication(),
            );
          }
        },
    );

  }
}

