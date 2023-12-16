import 'package:flutter/material.dart';

class ContactBody extends StatelessWidget {
  const ContactBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 40),
        child: Container(
          height: 600,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: Row(
                  children: const [
                    Icon(
                      Icons.location_on,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text("1234 Oceanview Avenue.\n Seaside Cove")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: const [
                    Icon(
                      Icons.email,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text("AnosEzz@gmail.com")
                  ],
                ),
              ),
              Image.asset("assets/images/snazzy-black.png",
                  fit: BoxFit.cover, height: 100, width: 300),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: TextFormField(
                  scrollPadding: const EdgeInsets.symmetric(horizontal: 5),
                  cursorColor: Colors.black,
                  cursorWidth: 1,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(255, 230, 198, 1),
                      hintText: 'Name',
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(5)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.orange, width: 2))),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: TextFormField(
                  scrollPadding: const EdgeInsets.symmetric(horizontal: 5),
                  cursorColor: Colors.black,
                  cursorWidth: 1,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(255, 230, 198, 1),
                      hintText: 'Email',
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(5)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.orange, width: 2))),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: TextFormField(
                  maxLines: 3,
                  scrollPadding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 50),
                  cursorColor: Colors.black,
                  cursorWidth: 1,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.black),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(255, 230, 198, 1),
                      hintText: 'Message',
                      hintStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(5)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.orange, width: 2))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 120, vertical: 5),
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
