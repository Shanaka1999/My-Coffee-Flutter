import 'package:flutter/material.dart';
import 'package:my_cofee_app/screens/order_confirm_screen.dart';
import 'package:my_cofee_app/widgets/all_order_card_widget.dart';
import 'package:my_cofee_app/widgets/cart_card_widget.dart';
import 'package:my_cofee_app/widgets/nav_bar_widget.dart';

class OrderListScreen extends StatefulWidget {
  @override
  _OrderListScreenState createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible = false; // Added to control password visibility
  int _currentIndex = 2;

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
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.brown,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "My Orders",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.brown,
          ),
        ),
        centerTitle: true, // Center the title horizontally within the AppBar
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
                // child: Text(
                //   "My Orders",
                //   style: TextStyle(
                //     fontSize: 25.0,
                //     fontWeight: FontWeight.bold,
                //     color: Colors.brown,
                //   ),
                //   textAlign: TextAlign.left,
                // ),
              ),
              SizedBox(height: 30,),

              // Scrollable menu card list
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return CartItemCard2(item: item);
                },
              ),



              SizedBox(height:30),


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
