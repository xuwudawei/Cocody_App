import 'package:flutter/material.dart';

class SensibilationsTile extends StatelessWidget {
  final date,
      content,
      description,
      imageUrl,
      title,
      category,
      currentAmount,
      intendedAmount;
  SensibilationsTile({
    this.content,
    this.date,
    this.imageUrl,
    this.title,
    this.description,
    this.category,
    this.currentAmount,
    this.intendedAmount,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed('/login/home/allSensibi/viewSensibis', arguments: {
          "title": title,
          "imageUrl": imageUrl,
          "description": description,
          "content": content,
          "date": date,
          "currentAmount": currentAmount,
          "intendedAmount": intendedAmount,
          "category": category,
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 12.0,
          right: 12.0,
          bottom: 22.0,
        ),
        child: Container(
          constraints: new BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width / 0.5,
            minHeight: MediaQuery.of(context).size.width / 2.5,
          ),
          height: MediaQuery.of(context).size.height / 5.65,
          decoration: BoxDecoration(
            color: Color.fromRGBO(61, 61, 61, 0.04),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 0,
                  ),
                  child: Container(
                    constraints: new BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width / 0.3,
                      maxHeight: MediaQuery.of(context).size.width / 1.5,
                    ),
                    child: AspectRatio(
                      aspectRatio: 2.75 / 3,
                      child: Image.asset(
                        imageUrl,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 34,
                    bottom: MediaQuery.of(context).size.width / 47,
                    top: MediaQuery.of(context).size.width / 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        constraints: new BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width / 2),
                        child: Text(
                          description,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        date,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(0, 191, 192, 1),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            //alignment: Alignment.topLeft,
                            child: Text(
                              category,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(193, 0, 0, 1),
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.none),
                            ),
                          ),
                          Container(
                            constraints: BoxConstraints(
                                minWidth:
                                    MediaQuery.of(context).size.width / 7),
                          ),
                          Container(
                            child: Text(
                              'Voir +',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(0, 191, 192, 1),
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.none),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
