import 'package:fire/Login.dart';
import 'package:fire/sign.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        Text("WELCOME",
            style: TextStyle(
              fontSize: 35,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(height: 20),
        Text(
          "kSlash Flutter provides extraordinary flutter tutorials.Do Subscribe!",
        ),
        SizedBox(height: 20),
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEr32KZzOcF-FQKLETWUnJxFReau2yHVmPeg&usqp=CAU'),
          radius: 200,
        ),
        Container(
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
              },
              child: Text('Login',style: TextStyle(color: Colors.black),),
            )),
        SizedBox(height: 20),
        Container(
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Sign();
                }));
              },
              child: Text('SIGN UP',style: TextStyle(color: Colors.black),),
            )),

      ],
    )));
  }
}
