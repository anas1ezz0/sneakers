import 'package:flutter/material.dart';

class CartHeadPage extends StatelessWidget {
  const CartHeadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          color: Colors.grey,
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Center(
            child: Text(
              "Your Cart",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 85),
          child: Divider(
            color: Colors.orange,
            height: 30,
          ),
        ),
      ],
    );
  }
}
