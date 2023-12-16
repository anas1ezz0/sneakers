import 'package:flutter/material.dart';
import 'package:sneakers/screens/explor_page.dart';

class AboutBody extends StatelessWidget {
  const AboutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 600,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "THE STORY OF",
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "SNEAKERS",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ".",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ]),
      ),
      Container(
        height: 600,
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Padding(
                padding: EdgeInsets.only(top: 60, bottom: 20),
                child: Text(
                  "Our Journey",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: const [
                  Text(
                    "sneakers ",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  Text(" was born out of a shared love for"),
                ],
              ),
              Row(
                children: const [
                  Text(
                    "sneakers ",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  Text("and a desire to create a onr - stop")
                ],
              ),
              const Text("stop destination for all sneakerheads.The idea"),
              const Text("originated when a groub of friends realized that"),
              Row(
                children: const [
                  Text("finding the perfrct pair of"),
                  Text(
                    " sneakers ",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  Text("often involved")
                ],
              ),
              const Text("scouring multiple stores and websites."),
              const SizedBox(
                height: 10,
              ),
              const Text('we decided to change this and embarked on a'),
              Row(
                children: const [
                  Text('journey to curate a premium selection of '),
                  Text(
                    "sneakers. ",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ],
              ),
              const Text(
                  "making them easily accessible to sneaker\n enthusiasts worldwide"),
            ]),
          ),
        ),
      ),
      SizedBox(
        height: 600,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Padding(
                padding: EdgeInsets.only(top: 60, bottom: 20),
                child: Text(
                  "Our Journey",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: const [
                  Text(
                    "sneakers ",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  Text(" was born out of a shared love for"),
                ],
              ),
              Row(
                children: const [
                  Text(
                    "sneakers ",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  Text("and a desire to create a onr - stop")
                ],
              ),
              const Text("stop destination for all sneakerheads.The idea"),
              const Text("originated when a groub of friends realized that"),
              Row(
                children: const [
                  Text("finding the perfrct pair of"),
                  Text(
                    " sneakers ",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  Text("often involved")
                ],
              ),
              const Text("scouring multiple stores and websites."),
              const SizedBox(
                height: 10,
              ),
              const Text('we decided to change this and embarked on a'),
              Row(
                children: const [
                  Text('journey to curate a premium selection of '),
                  Text(
                    "sneakers. ",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ],
              ),
              const Text(
                  "making them easily accessible to sneaker\n enthusiasts worldwide"),
            ]),
          ),
        ),
      ),
      Container(
        height: 400,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: const [
                    Text("      At "),
                    Text(
                      'sneakers',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                    Text(", we are committed to providing")
                  ],
                ),
                const Text(
                    "our customers with an unparalleled \n shopping experience. We carefully "),
                Row(
                  children: const [
                    Text('      handpic each pair of '),
                    Text(
                      'sneakers ',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                    Text('from'),
                  ],
                ),
                const Text(
                    "renowned brands, ensuring that they meet \n the highest standards of craftsmanship, \n quality. and design. Whether you are a \n sports enthusiast, a street-style aficionado,\n or simply seeking comfortable everyday\n shoes, we have something special for\n                        everyone."),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: MaterialButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      color: Colors.deepOrange,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ExplorPage(),
                            ));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Explore Sneakers',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ]),
        ),
      )
    ]);
  }
}
//sneakers was born out of a shared love for sneakers and a desire to create a onr - stop destination for all sneakerheads.The idea originated when a groub of friends realized that finding the perfrct pair of
