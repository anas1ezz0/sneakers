import 'package:flutter/material.dart';
import 'package:sneakers/models/data.dart';
import 'package:sneakers/screens/explor_page.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key, this.dataModel, this.dataList});
  final DataModel? dataModel;
  final List<DataModel>? dataList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   height: 350,
        //   width: 250,
        //   color: Colors.grey[200],
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Center(
        //           child: Stack(
        //             children: [
        //               Image.network(
        //                 'https://secure-images.nike.com/is/image/DotCom/CT8532_104_A_PREM?SNKRS_COVER_WD&align=0,1',
        //                 height: 200,
        //                 width: 200,
        //               ),
        //               Align(
        //                 alignment: Alignment.topRight,
        //                 child: IconButton(
        //                   onPressed: () {},
        //                   icon: const Icon(Icons.delete, color: Colors.grey),
        //                 ),
        //               ),
        //               // Align(
        //               //   alignment: Alignment.topRight,
        //               //   child: IconButton(
        //               //     onPressed: () {
        //               //       // setState(() {
        //               //       //   if (favIconColor == Colors.grey) {
        //               //       //     favIconColor = Colors.red;
        //               //       //   } else {
        //               //       //     favIconColor = Colors.grey;
        //               //       //   }
        //               //       // });
        //               //     },
        //               //     icon: Icon(Icons.favorite, color: favIconColor),
        //               //   ),
        //               // ),
        //               // if (dataModel?.discount == true)
        //               // Align(
        //               //   alignment: Alignment.topLeft,
        //               //   child: Padding(
        //               //     padding: const EdgeInsets.only(left: 15, top: 15),
        //               //     child: Container(
        //               //         height: 40,
        //               //         width: 47,
        //               //         decoration: BoxDecoration(
        //               //           color: const Color.fromARGB(255, 255, 225, 216),
        //               //           borderRadius: BorderRadius.circular(15),
        //               //         ),
        //               //         child: Center(
        //               //             child: Text(
        //               //           ("${dataModel!.discount! ? (((dataModel?.oldPrice! - dataModel?.price!) / dataModel?.oldPrice!) * (100)).ceil() : ''}%")
        //               //           //dataModel.oldPrice - dataModel.price/dataModel.oldPrice *100
        //               //           ,
        //               //           style: const TextStyle(fontWeight: FontWeight.bold),
        //               //         ))),
        //               //   ),
        //               // )
        //             ],
        //           ),
        //         ),
        //         Text(
        //           "Nike",
        //           style: TextStyle(
        //               color: Colors.amber[900], fontWeight: FontWeight.w600),
        //         ),
        //         const Text(
        //           "Valour Blue",
        //           style: TextStyle(
        //               color: Colors.black, fontWeight: FontWeight.w700),
        //         ),
        //         const SizedBox(
        //           height: 15,
        //         ),
        //         Text(
        //           '\$${75}',
        //           style: TextStyle(
        //               color: Colors.amber[900], fontWeight: FontWeight.w700),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),

        const Center(
            child: Text(
          "NOTHING HERE..",
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.w400, color: Colors.black),
        )),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 0.3)),
            child: Column(children: [
              const Row(
                children: [
                  Text(
                    "Price : ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '\$ 0',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Discount : ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '\$ 0',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[700]),
                  )
                ],
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 0.3)),
            child: const Column(children: [
              Row(
                children: [
                  Text(
                    "Total : ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text('\$ 0',
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20,
                          fontWeight: FontWeight.w700))
                ],
              ),
            ]),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: 160,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7), color: Colors.amber[900]),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "check out",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExplorPage(),
                  ));
            },
            child: const Text(
              "View Products >",
              style: TextStyle(color: Colors.grey),
            ))
      ],
    );
  }
}
