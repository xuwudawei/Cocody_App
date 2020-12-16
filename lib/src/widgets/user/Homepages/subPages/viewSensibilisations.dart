import 'package:flutter/material.dart';

class ViewSensibilisations extends StatelessWidget {
  final Map data;
  ViewSensibilisations({Key key, @required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final intendedAmount =
        double.parse(data["intendedAmount"].replaceAll(",", ""));
    final currentAmount =
        double.parse(data["currentAmount"].replaceAll(",", ""));
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
                    padding: EdgeInsets.only(top: 15, bottom: 20),
                    child: Text(
                      data["content"],
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Fonds",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: new LinearProgressIndicator(
                          value: currentAmount / intendedAmount,
                          backgroundColor: Color.fromRGBO(229, 229, 229, 1),
                          valueColor: new AlwaysStoppedAnimation<Color>(
                            Color.fromRGBO(0, 191, 192, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      '120.000' + ' F  /  ' + '1.000.000' + ' F',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(0, 191, 192, 1),
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none),
                    ),
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
