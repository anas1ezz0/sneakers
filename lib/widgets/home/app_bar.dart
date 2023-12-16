import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:provider/provider.dart';
import 'package:sneakers/screens/cart.page.dart';
import 'package:sneakers/screens/home_page.dart';

import '../../screens/login_page.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
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
      title: InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            )),
        child: const Text(
          "sneakers",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
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
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CartPage()));
                      },
                      child: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black,
                      ),
                    ),
                  )),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ));
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.asset(
                      "assets/images/me.jpg",
                      height: 35,
                      width: 35,
                    )),
              )
            ],
          ),
        )
      ],
    );
  }
}
