import 'package:flutter/material.dart';
import 'package:justshare/ui_components/uihelper.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // Controller Email
TextEditingController email = TextEditingController();
String emailText = "Please Enter your email";

  // Controller Password
TextEditingController password = TextEditingController();
String passText = "Please Enter your password";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page"),
      backgroundColor: Colors.blue,),

     //Body
     body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // UI Text Filed 
              UiHelper.customTextFiled(email, emailText, Icons.mail, false),         
              UiHelper.customTextFiled(password, passText, Icons.password, false),

           // UI Button
              
              UiHelper.customButton(() { 
                
              }, "Login"),
          ],
         ),
  

    );
  }
}