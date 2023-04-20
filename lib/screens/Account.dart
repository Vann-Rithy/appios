import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:barcode_widget/barcode_widget.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 356.7,
                height: 229.9,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FlipCard(
                  fill: Fill.fillBack,
                  direction: FlipDirection.HORIZONTAL,
                  speed: 400,
                  front: Material(
                    color: Colors.transparent,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(0),
                            ),
                            child: Container(
                              width: 50.4,
                              height: 236,
                              decoration: BoxDecoration(
                                color: Color(0xFF009F29),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 0),
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        child: Image.network(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCWz2PNQ8o4EKjY6lY6JcT7sLIWeiS3Hc0_Vsm2Ot820vgbCO_GWVAB4Z_XDsWiyWDuf0&usqp=CAU',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 0),
                                      child: Text(
                                        'ប័ណ្ណសម្គាល់ខ្លួននិសិត្យ\nវ៉ាន់​ រិទ្ធី\nVANN RITHY\n00-00-0000\nAccounting',
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 0, 0),
                                  child: BarcodeWidget(
                                    data: '0212154822',
                                    barcode: Barcode.code128(),
                                    width: 100,
                                    height: 50,
                                    color: Colors.black,
                                    backgroundColor: Colors.transparent,
                                    errorBuilder: (_context, _error) =>
                                        SizedBox(
                                      width: 100,
                                      height: 50,
                                    ),
                                    drawText: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  back: Material(
                    color: Colors.transparent,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF038723),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(
                        'images/Royal-University-of-Phnom-Penh.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
              child: SizedBox(
                height: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF005387),
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.school,
                          size: 50,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 1,
                        height: 100,
                        color: Colors.white30,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(60, 15, 0, 0),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Year 1\n".toUpperCase(),
                                  style: TextStyle(fontSize: 40),
                                ),
                                TextSpan(
                                  text: "computer science".toUpperCase(),
                                  style: TextStyle(fontSize: 15),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 20),
              child: SizedBox(
                height: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF640087),
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.school,
                          size: 50,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 1,
                        height: 100,
                        color: Colors.white30,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(60, 15, 0, 0),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Year 2\n".toUpperCase(),
                                  style: TextStyle(fontSize: 40),
                                ),
                                TextSpan(
                                  text: "computer science".toUpperCase(),
                                  style: TextStyle(fontSize: 15),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 20),
              child: SizedBox(
                height: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFDB9A15),
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.school,
                          size: 50,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 1,
                        height: 100,
                        color: Colors.white30,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(60, 15, 0, 0),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Year 3\n".toUpperCase(),
                                  style: TextStyle(fontSize: 40),
                                ),
                                TextSpan(
                                  text: "computer science".toUpperCase(),
                                  style: TextStyle(fontSize: 15),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 20),
              child: SizedBox(
                height: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF038723),
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.school,
                          size: 50,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 1,
                        height: 100,
                        color: Colors.white30,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(60, 15, 0, 0),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Year 4\n".toUpperCase(),
                                  style: TextStyle(fontSize: 40),
                                ),
                                TextSpan(
                                  text: "computer science".toUpperCase(),
                                  style: TextStyle(fontSize: 15),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
