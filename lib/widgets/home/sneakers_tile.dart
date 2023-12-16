import 'package:flutter/material.dart';
import 'package:sneakers/models/data.dart';

class SneakersTile extends StatefulWidget {
  const SneakersTile({super.key, required this.dataModel, this.dataList});
  final DataModel dataModel;
  final List<DataModel>? dataList;

  @override
  State<SneakersTile> createState() => _SneakersTileState();
}

class _SneakersTileState extends State<SneakersTile> {
  Color favIconColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Hero(
              tag: widget.dataModel.id!,
              child: Stack(
                children: [
                  Image.network(
                    "${widget.dataModel.image![0]}",
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (favIconColor == Colors.grey) {
                            favIconColor = Colors.red;
                          } else {
                            favIconColor = Colors.grey;
                          }
                        });
                      },
                      icon: Icon(Icons.favorite, color: favIconColor),
                    ),
                  ),
                  if (widget.dataModel.discount == true)
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Container(
                            height: 40,
                            width: 47,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 225, 216),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                                child: Text(
                              ("${widget.dataModel.discount! ? (((widget.dataModel.oldPrice! - widget.dataModel.price!) / widget.dataModel.oldPrice!) * (100)).ceil() : ''}%")

                              //dataModel.oldPrice - dataModel.price/dataModel.oldPrice *100
                              ,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ))),
                      ),
                    )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${widget.dataModel.company}",
                    style: TextStyle(color: Colors.amber[900]),
                  ),
                  Text(
                    "${widget.dataModel.name}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
              const Spacer(),
              widget.dataModel.discount!
                  ? Padding(
                      padding: const EdgeInsets.only(right: 10.0, bottom: 29),
                      child: Text("\$${widget.dataModel.oldPrice!}",
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.lineThrough)),
                    )
                  : const Text(""),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      "\$${widget.dataModel.price}",
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 33,
                    width: 33,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange[100],
                        borderRadius: BorderRadius.circular(15)),
                    child: IconButton(
                      onPressed: () {
                        // cart.add(dataList[]);
                      },
                      icon: const Icon(
                        Icons.add_shopping_cart,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
