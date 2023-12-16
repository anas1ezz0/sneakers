import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/screens/explor_page.dart';

class HeadScreen extends StatefulWidget {
  const HeadScreen({super.key});

  @override
  State<HeadScreen> createState() => _HeadScreenState();
}

class _HeadScreenState extends State<HeadScreen> {
  double angle = 24.7;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Row(
            children: [
              const Text(
                "Explore ",
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.w500),
              ),
              Text(
                "Sneakers",
                style: TextStyle(
                    fontSize: 37,
                    fontWeight: FontWeight.w700,
                    color: Colors.yellow.shade900),
              ),
              const Text(
                ".",
                style: TextStyle(fontSize: 37, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text("Your Ultimate\nFootwear\nDestination!",
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.w500)),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 10, bottom: 30),
          child: Text(
              "Find the perfect kicks that blend fashion and function,"
              "\n ensuring every step is a statement."
              " Step into Sneaker Paradise!",
              style: TextStyle(fontSize: 15, color: Colors.grey)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExplorPage(),
                  ));
            },
            color: Colors.yellow.shade900,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Text(
                "Shop Now",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 170),
          child: Transform.rotate(
            angle: angle,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.amber[900],
                  image: const DecorationImage(
                      image: AssetImage("assets/images/home-sneaker.webp"),
                      fit: BoxFit.scaleDown)),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Center(
          child: Text(
            "POPULAR SNEAKERS",
            style: TextStyle(
                fontFamily: "Tilt Prism",
                fontSize: 30,
                fontWeight: FontWeight.w500),
          ),
        ),
        const Padding(
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
