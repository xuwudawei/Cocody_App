import 'package:flutter/material.dart';

class ViewNews extends StatelessWidget {
  final Map data;
  ViewNews({Key key, @required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        leadingWidth: 5,
        title: GestureDetector(
          child: Text(
            'Back',
            style: TextStyle(
              color: Color.fromRGBO(193, 0, 0, 1),
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Image.asset(
              "assets/images/logo.jpeg",
              width: 80,
              height: 50,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Container(
                child: Image.asset(data["imageUrl"]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    data["title"],
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    data["date"],
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(0, 191, 192, 1),
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 40),
                    child: Text(
                      data["content"],
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Text(
                    "Source : " + data["source"],
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
