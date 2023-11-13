import 'package:flutter/material.dart';
import 'package:my_cofee_app/screens/order_confirm_screen.dart';
import 'package:my_cofee_app/widgets/cart_card_widget.dart';
import 'package:my_cofee_app/widgets/nav_bar_widget.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible = false; // Added to control password visibility
  int _currentIndex = 1;

  List<Map<String, dynamic>> cartItems = [
    {'imageUrl':"assets/images/coffee.png","name": "Espresso1", 'quantity': 2, 'price': 10.0,},
    {"name": "Espresso1", 'imageUrl': "assets/images/coffee.png",'quantity': 2, 'price': 10.0,},
    {"name": "Espresso1", "imageUrl": "assets/images/coffee.png",'quantity': 2, 'price': 10.0,},
    {"name": "Espresso1", "imageUrl": "assets/images/coffee.png",'quantity': 2, 'price': 10.0,},

    // Add more items as needed
  ];

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:0, right: 15, left: 15.0),
                child: Text(
                  "My Cart",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 30,),

              // Scrollable menu card list
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return CartItemCard(item: item);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 1, // Adjust the height as needed
                  color: Colors.grey, // You can change the color to the desired line color
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:35.0, top:8,right:35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the buttons horizontally
                  children: [
                    Text(
                      "Total Price",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "LKR 240",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),

                  ],
                ),
              ),

              SizedBox(height:30),

              Padding(
                padding: const EdgeInsets.only(top :10.0, bottom:100, left:25,right:25),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ConfirmScreen(),
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
                          "Checkout",
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
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(15.0),
        child: FloatingNavBar(
          currentIndex: _currentIndex,
          onIndexChanged: (index) {
            // Handle navigation bar item changes here
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}

