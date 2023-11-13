import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  final Map<String, dynamic> item;

  CartItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      elevation: 2,
      margin: EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        // leading: Image.network(
        //   item['imageUrl'],
        //   width: 50,
        //   height: 50,
        // ),
        title: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Text(item['name']),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text('Quantity: ${item['quantity']}'),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text('Price: \$${item['price']}'),
              ),
            ],
          ),
        ),

        trailing: IconButton(

          icon: Icon(Icons.delete),
          onPressed: () {
            // Add logic to remove the item from the cart here
          },
        ),
      ),
    );
  }
}
