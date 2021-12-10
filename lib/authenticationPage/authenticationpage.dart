import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController emailField= TextEditingController();
  TextEditingController passwordField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.blueAccent
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           TextFormField(
             controller: emailField,
             decoration: InputDecoration(

               hintText: "youremail@email.gom",
               hintStyle: TextStyle(
                 color: Colors.white,
               ),
               labelText: "email",
               labelStyle: TextStyle(
                 color: Colors.white,
               )
             ),
           ),
           TextFormField(
             controller: passwordField,
             obscureText: true,
             decoration: InputDecoration(
               hintText: "password",
               hintStyle: TextStyle(
                 color: Colors.white,
               ),
               labelText: "password",
               labelStyle: TextStyle(
                 color: Colors.white,
               )
             ),
           ),
           Container(
             width: MediaQuery.of(context).size.width / 1.4,
             height: 45,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15.0),
               color: Colors.white,
             ),
             child: MaterialButton(onPressed: (){},child: Text(
               "Register"
             ),),
           ),
           Container(
             width: MediaQuery.of(context).size.width / 1.4,
             height: 45,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15.0),
               color: Colors.white,
             ),
             child: MaterialButton(onPressed: (){},child: Text(
                 "Login"
             ),),
           ),


         ]

        ),
      ),
    );
  }
}
