import 'package:flutter/material.dart';

class SensibilationsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0, bottom: 23, top: 22),
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/images/plastique.jpeg',
                      width: 113,
                      height: 82,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
