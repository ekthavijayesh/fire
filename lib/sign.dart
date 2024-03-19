import 'package:fire/welcome.dart';
import 'package:flutter/material.dart';

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      Text("Sign Up",
          style: TextStyle(
            fontSize: 35,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )),
      SizedBox(height: 20),
      Text(
        "Create an account, It's free",
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 30),
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Username',
        ),
      ),
      SizedBox(height: 20),
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Email',
        ),
      ),
      SizedBox(height: 20),
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Password',
        ),
      ),
      SizedBox(height: 20),
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Confirm Password',
        ),
      ),
      SizedBox(height: 40),
      TextButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context){return Sign(); }));},
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        child: Text('Sign Up'),
      ),
      SizedBox(height: 40),
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Already have an account?",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return Welcome();}));}, child: Text('Login'),)
        ],
      ),
    ])));
  }
}
