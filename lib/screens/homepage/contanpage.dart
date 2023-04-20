import 'package:creadit_card/screens/homepage/pdfview.dart';
import 'package:creadit_card/screens/moduls/textcontant.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class contantpage extends StatefulWidget {
  const contantpage({super.key});

  @override
  State<contantpage> createState() => _contantpageState();
}

class _contantpageState extends State<contantpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5,
              child: Container(
                width: 400,
                height: 300,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset(
                        detail_text[0].image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Container(
                          width: 150,
                          height: 300,
                          child: Column(
                            children: [
                              Text(
                                detail_text[0]
                                    .title, //put your own long text here.
                                maxLines: 5,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                detail_text[0]
                                    .description, //put your own long text here.
                                maxLines: 5,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              ElevatedButton(
                                child: Text('my page1'),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return pdfview();
                                  }));
                                },
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5,
              child: Container(
                width: 400,
                height: 300,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset(
                        detail_text[1].image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Container(
                          width: 150,
                          height: 300,
                          child: Column(
                            children: [
                              Text(
                                detail_text[1]
                                    .title, //put your own long text here.
                                maxLines: 5,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                detail_text[1]
                                    .description, //put your own long text here.
                                maxLines: 5,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              TextButton(onPressed: () {}, child: Text("more")),
                            ],
                          )),
                    )
                  ],
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5,
              child: Container(
                width: 400,
                height: 300,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset(
                        detail_text[2].image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Container(
                          width: 150,
                          height: 300,
                          child: Column(
                            children: [
                              Text(
                                detail_text[2]
                                    .title, //put your own long text here.
                                maxLines: 5,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                detail_text[2]
                                    .description, //put your own long text here.
                                maxLines: 5,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              TextButton(onPressed: () {}, child: Text("more")),
                            ],
                          )),
                    )
                  ],
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5,
              child: Container(
                width: 400,
                height: 300,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset(
                        detail_text[3].image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Container(
                          width: 150,
                          height: 300,
                          child: Column(
                            children: [
                              Text(
                                detail_text[3]
                                    .title, //put your own long text here.
                                maxLines: 5,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                detail_text[3]
                                    .description, //put your own long text here.
                                maxLines: 5,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              TextButton(onPressed: () {}, child: Text("more")),
                            ],
                          )),
                    )
                  ],
                ),
              )),
        ),
      ],
    ));
  }
}
