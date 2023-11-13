import 'package:flutter/material.dart';
import 'package:my_cofee_app/screens/order_screen.dart';

class CoffeeMenuWidget extends StatelessWidget {
  Widget buildBlankTransparentCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 0, // Set elevation to 0 for a transparent card
      child: Container(
        color: Colors.brown, // Set the background color to brown
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 210,
              // You can leave this empty or add an image asset if needed
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String?>> coffeeItems = [
      {"name": "Espresso1", "imagePath": "assets/images/coffee.png"},
      {"name": "Latte2", "imagePath": "assets/images/coffee.png"},
      {"name": "Cappuccino3", "imagePath": "assets/images/coffee.png"},
      {"name": "Mocha4", "imagePath": "assets/images/coffee.png"},
      {"name": "Americano5", "imagePath": "assets/images/coffee.png"},
      {"name": "Macchiato6", "imagePath": "assets/images/coffee.png"},
      {"name": "Cortado7", "imagePath": "assets/images/coffee.png"},
    ];

    int splitIndex = (coffeeItems.length + 1) ~/ 2;

    return SingleChildScrollView(
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: coffeeItems
                  .sublist(0, splitIndex)
                  .map((item) => buildCoffeeCard(context, item))
                  .toList(),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                ...coffeeItems
                    .sublist(splitIndex)
                    .map((item) => buildCoffeeCard(context, item))
                    .toList(),
                if (coffeeItems.length.isOdd) buildBlankTransparentCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCoffeeCard(BuildContext context, Map<String, String?> item) {
    final String? name = item["name"];
    final String? imagePath = item["imagePath"];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CoffeeDetailsScreen(name, imagePath),
            ),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  child: Image.asset(imagePath!, fit: BoxFit.fill),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    name ?? "",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



