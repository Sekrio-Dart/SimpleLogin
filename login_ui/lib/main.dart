import 'package:flutter/material.dart';

void main() {
  runApp(LoginUi());
}

class LoginUi extends StatelessWidget {
  const LoginUi({super.key});
  //keys are used optimize performance by reusing widgets instead of rebuilding them
  //super calls something from the parent class
  //we use () for positional parameters "passed by order" and {} for named parameters "passed by names"

  @override
  //replacing a method from a parent class with my own version
  Widget build(BuildContext context)
  //Build a Widget that takes a parameter (context) of type (BuildContext) "which tells flutter the location of the widget on the screen"
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Ui',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginPage(),
      //it tells flutter: this is the first widget to be displayed
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    //scaffold is to hold everything shown on the screen on it, like a frame for pictures
    (
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child:
            SingleChildScrollView
            //a scrollable widget that can hold one child for if the content is big
            (
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 60.0,
              ),
              //EdgeInsets defines padding/margin
              //symmetric lets you set horizontal and vertical paddings separately
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //determines how children are positioned along the main axis
                crossAxisAlignment: CrossAxisAlignment.stretch,
                //determines how children are positioned along the cross axis
                children: [
                  const Icon(
                    Icons.lock_outline,
                    //contains a lot of ready to use icons
                    size: 80.0,
                    color: Colors.blue,
                  ),
                  const SizedBox(height: 40.0),

                  //Email
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Email',
                      //adds a floating label text
                      prefixIcon: const Icon(Icons.email),
                      // it adds an icon inside the input field
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  //Password Field
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Enter Your Password',
                      prefixIcon: const Icon(Icons.lock),
                      filled: true,
                      fillColor: Colors.white,
                      border:
                          OutlineInputBorder
                          // used to style the borders of the input field
                          (borderRadius: BorderRadius.circular(12.0)),
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  //Forgot Password
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  //Login Button
                  SizedBox(
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 18.0, color: Colors.black),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30.0),
                  //sign Up
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't Have an Account?        ",
                        style: TextStyle(color: Colors.blue),
                      ),
                      GestureDetector //it detects touch interactions from the user
                      (
                        onTap:
                            () {}, //an anonymous function that takes no parameters and does nothing
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
