import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class AboutAppBar extends StatelessWidget {
  const AboutAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      title: const Text(
        "sneakers",
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      actions: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: badges.Badge(
                    badgeStyle:
                        badges.BadgeStyle(badgeColor: Colors.yellow.shade900),
                    badgeContent: const Text(
                      "0",
                      style: TextStyle(color: Colors.white),
                    ),
                    child: const InkWell(
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black,
                      ),
                    ),
                  )),
              ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.asset(
                    "assets/images/me.jpg",
                    height: 35,
                    width: 35,
                  ))
            ],
          ),
        )
      ],
    );
  }
}
