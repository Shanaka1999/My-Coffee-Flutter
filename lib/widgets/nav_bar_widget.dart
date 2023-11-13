import 'package:flutter/material.dart';
import 'package:my_cofee_app/screens/all_orders_screen.dart';
import 'package:my_cofee_app/screens/menu_screen.dart';
import 'package:my_cofee_app/screens/order_confirm_screen.dart';
import 'package:my_cofee_app/screens/profile_screen.dart';

import '../screens/cart_screen.dart';

class FloatingNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onIndexChanged;

  FloatingNavBar({
    required this.currentIndex,
    required this.onIndexChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              if (index == 0) {  // Check if "Cart" icon is tapped
                // Navigate to the "CartScreen"
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MenuScreen(),
                  ),
                );
              }else if (index == 1) {  // Check if "Cart" icon is tapped
                // Navigate to the "CartScreen"
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(),
                  ),
                );
              }else if (index == 2) { // Check if "Profile" icon is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderListScreen(),
                  ),
                );
              }  else {
                onIndexChanged(index);
              }
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_outlined),
                label: 'Orders',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
