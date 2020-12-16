import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  final date, content, description, imageUrl, title, source;
  NewsTile(
      {this.content,
      this.date,
      this.description,
      this.imageUrl,
      this.title,
      this.source});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed("/login/home/allNews/viewNews", arguments: {
          "title": title,
          "imageUrl": imageUrl,
          "description": description,
          "content": content,
          "date": date,
          "source": source,
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
          right: 12.0,
          bottom: 22.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(61, 61, 61, 0.04),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    imageUrl,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
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
                    description,
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
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 8.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        date,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(0, 191, 192, 1),
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                  Padding(
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
