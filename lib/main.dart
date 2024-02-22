import 'package:flutter/material.dart';
import 'package:justshare/view/login_page.dart';
import 'dart:async'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget { 
@override 
  _MyHomePageState createState() => _MyHomePageState(); 
} 

class _MyHomePageState extends State<MyHomePage> { 
  @override 
  void initState() { 
    super.initState(); 
    
    Timer(Duration(seconds: 3),()=>Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context) =>  LoginPage())) 
         ); 
  } 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold(
   
      body: SizedBox(
        child: Column(
             children: [
             Image.asset("assets/Image/splash_bg.jpg",
             width: MediaQuery.of(context).size.width,
             height:MediaQuery.of(context).size.height ,), 
             
        ]),
      ),
    );
  } 
} 

