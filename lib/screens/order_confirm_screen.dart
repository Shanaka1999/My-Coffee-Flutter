import 'package:flutter/material.dart';
import 'package:my_cofee_app/screens/menu_screen.dart';
import 'package:my_cofee_app/widgets/cart_card_widget.dart';

class ConfirmScreen extends StatefulWidget {
  @override
  _ConfirmScreenState createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Set the AppBar background color to white
        elevation: 0, // Set the elevation to 0 to make the shadow invisible
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.brown,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // title: Text(
        //   "My Cart",
        //   style: TextStyle(
        //     fontSize: 25.0,
        //     fontWeight: FontWeight.bold,
        //     color: Colors.brown,
        //   ),
        // ),
      ),
      body:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Padding(
              //   padding: const EdgeInsets.only(top:80, right: 15, left: 15.0),
              //   child: Text(
              //     "Order Confirmed",
              //     style: TextStyle(
              //       fontSize: 25.0,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.brown,
              //     ),
              //     textAlign: TextAlign.left,
              //   ),
              // ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(top: 80, right: 15, left: 15.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.check_circle, // You can use any icon you prefer
                      color: Colors.green, // Set the color of the icon
                      size: 100.0, // Set the size of the icon
                    ),
                    SizedBox(height: 10), // Add some spacing between the icon and text
                    Text(
                      "Order Confirmed",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),

              Spacer(),


              // Scrollable menu card list


              SizedBox(height:30),

              Padding(
                padding: const EdgeInsets.only(top :10.0, bottom:20, left:25,right:25),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MenuScreen(),
                            ),
                          );

                          // Add your button's action here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.brown,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: Text(
                          "Go to home",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              )
              // Add your other widgets for the Cart screen here
            ],
          ),
        ),

    );
  }
}
