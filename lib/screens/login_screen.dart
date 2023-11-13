import 'package:flutter/material.dart';
import 'package:my_cofee_app/screens/sign_up_screen.dart';

import 'menu_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible = false; // Added to control password visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Wrap with SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 15, left: 15.0),
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 15, left: 15.0),
                child: Text(
                  "Welcome back",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.brown,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown),
                    ),
                    labelStyle: TextStyle(color: Colors.brown),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock_outline, // Change the icon to a lock icon
                      color: Colors.brown,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown),
                    ),
                    labelStyle: TextStyle(color: Colors.brown),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      ),
                      color: Colors.brown,
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                  obscureText: !_passwordVisible,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left:15, right: 15.0, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Add space between the buttons
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0, top: 0),


                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Navigate to the signUpScreen when the button is pressed
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                            },

                            style: TextButton.styleFrom(
                              primary: Colors.blue, // Set the text color to blue for the entire button
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Are you new? ",
                                    style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey), // This part is not bold and has the blue color
                                  ),
                                  TextSpan(
                                    text: " Sign up",
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown), // This part is bold and has the brown color
                                  ),
                                ],
                              ),
                            ),
                          ),


                          SizedBox(height: 10), // Add some spacing between the buttons
                        ],
                      ),
                    ),

                    ClipOval(
                      child: Material(
                        color: Colors.transparent,
                        elevation: 4, // Add elevation for a shadow effect
                        shape: CircleBorder(), // Use a circular shape
                        child: InkWell(
                          onTap: () {
                            // Add your login logic here
                            String email = _emailController.text;
                            String password = _passwordController.text;

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuScreen(),
                              ),
                            );


                            // You can validate and authenticate the user here
                          },
                          child: Container(
                            padding: EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.brown, // Set the button color to brown
                            ),
                            child: Icon(
                              Icons.login_sharp,
                              size: 30.0,
                              color: Colors.white, // Set the icon color to white
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
