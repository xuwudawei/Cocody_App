import 'package:flutter/material.dart';

class NewsTile extends StatefulWidget {
  final title, imageUrl, content, description, date;
  NewsTile(
      {this.content, this.date, this.description, this.imageUrl, this.title});
  @override
  _NewsTileState createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
        right: 12.0,
        bottom: 22.0,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(61, 61, 61, 0.04),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  widget.imageUrl,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.description,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      widget.date,
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(0, 191, 192, 1),
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 8.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Voir +',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(0, 191, 192, 1),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
