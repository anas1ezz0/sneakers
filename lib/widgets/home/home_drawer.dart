import 'package:flutter/material.dart';
import 'package:sneakers/screens/about_page.dart';
import 'package:sneakers/screens/contact_page.dart';
import 'package:sneakers/screens/explor_page.dart';
import 'package:sneakers/screens/home_page.dart';
import 'package:sneakers/screens/men_page.dart';
import 'package:sneakers/screens/women_page.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: double.infinity,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close)),
                const Divider(
                  color: Colors.black26,
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ));
                      },
                      child: const ListTile(
                        title: Text("Home"),
                      )),
                ),
                const Divider(
                  color: Colors.black26,
                ),
                Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ExplorPage(),
                              ));
                        },
                        child: const ListTile(
                          leading: Text("Collections"),
                        ))),
                const Divider(
                  color: Colors.black26,
                ),
                Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MenPage(),
                              ));
                        },
                        child: const ListTile(
                          leading: Text("Men"),
                        ))),
                const Divider(
                  color: Colors.black26,
                ),
                Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WomenPage(),
                              ));
                        },
                        child: const ListTile(
                          leading: Text("Women"),
                        ))),
                const Divider(
                  color: Colors.black26,
                ),
                Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AboutPage(),
                              ));
                        },
                        child: const ListTile(
                          leading: Text("About"),
                        ))),
                const Divider(
                  color: Colors.black26,
                ),
                Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ContactPage(),
                              ));
                        },
                        child: const ListTile(
                          leading: Text("Contact"),
                        ))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
