import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
           primarySwatch: Colors.blue,
           scaffoldBackgroundColor: Colors.grey[50],
           appBarTheme: AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.light, color: Colors.white, iconTheme: const IconThemeData(color: Colors.black), textTheme: const TextTheme( headline6: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold)))
      ),
     
    );
  }
}


