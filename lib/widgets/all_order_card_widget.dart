import 'package:flutter/material.dart';

class CartItemCard2 extends StatelessWidget {
  final Map<String, dynamic> item;

  CartItemCard2({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text('Quantity: ${item['quantity']}'),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text('Price: \$${item['price']}'),
                  ),
                ],
              )

            ],
          ),
        ),


      ),
    );
  }
}
