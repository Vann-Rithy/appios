import 'package:flutter/material.dart';

class buildDrawer extends StatelessWidget {
  const buildDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 123, 27, 27),
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Image.asset("images/rupp_logo.png"),
                      ),
                    ),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: "សាកលវិទ្យាល័យភូមិន្ទភ្នំពេញ\n",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                        TextSpan(
                            text: "ROYAL UNIVERSITY OF PHNOM PENH",
                            style:
                                TextStyle(fontSize: 10, color: Colors.white)),
                      ]),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Divider(
                height: 10,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: 300,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      elevation: MaterialStatePropertyAll(0)),
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        child: Icon(Icons.label_outline_rounded),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text("Faculty of science".toUpperCase()),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.transparent),
                    elevation: MaterialStatePropertyAll(0)),
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      child: Icon(Icons.label_outline_rounded),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("Faculty of science".toUpperCase()),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
