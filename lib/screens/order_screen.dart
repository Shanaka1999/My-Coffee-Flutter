import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_cofee_app/screens/cart_screen.dart';

class CoffeeDetailsScreen extends StatelessWidget {
  final String? name;
  final String? imagePath;

  CoffeeDetailsScreen(this.name, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              'Order',
              style: TextStyle(color: Colors.brown), // Set the text color to brown
            ),
          ),
        ),
        backgroundColor: Colors.white, // Set the AppBar background color to white
        elevation: 0, // Set the elevation to 0 to make the shadow invisible
        iconTheme: IconThemeData(color: Colors.brown), // Set the back button color to brown
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.brown), // Add a cart icon with brown color
              onPressed: () {
                // Add your cart button action here
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              // Set the container background color to gray
              child: Image.asset(imagePath!, width: 200, height: 200),
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left:35.0, right:25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the buttons horizontally
                children: [
                  Text(
                    name ?? "",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.brown), // Add a brown border
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min, // Make the row take minimum horizontal space
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(color: Colors.brown), // Add a brown border
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min, // Make the row take minimum horizontal space
                            children: [
                              Container(
                                width: 40,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Center(
                                  child: IconButton(
                                    icon: Icon(Icons.remove),
                                    iconSize: 15,
                                    onPressed: () {
                                      // Implement logic to decrease quantity
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Center(
                                  child: Text(
                                    "1", // You can replace "1" with the actual quantity
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(17.0),
                                ),
                                child: Center(
                                  child: IconButton(
                                    icon: Icon(Icons.add),
                                    iconSize: 15,
                                    onPressed: () {
                                      // Implement logic to increase quantity
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 1, // Adjust the height as needed
                color: Colors.grey, // You can change the color to the desired line color
              ),
            ),

            Spacer(),

            Padding(
              padding: const EdgeInsets.only(left:35.0, right:35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the buttons horizontally
                children: [
                  Text(
                    "Total Amount",
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
            SizedBox(height:0),

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
                            builder: (context) => CartScreen(),
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
                        "Add to cart",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            )


          ],
        ),
      ),

    );
  }
}
