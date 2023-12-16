import 'package:flutter/material.dart';

class WomenHead extends StatelessWidget {
  const WomenHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Divider(
          color: Colors.grey,
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Center(
            child: Text(
              "WOMEN'S COLLECTION",
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
