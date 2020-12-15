import 'package:cocody/src/widgets/user/loginPage/login.dart';
import 'package:cocody/src/widgets/user/signUpPages/signUp.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height.toInt();
    final screenWidth = MediaQuery.of(context).size.width.toInt();
    print("height: " + screenHeight.toString());
    print("Width: " + screenWidth.toString());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 1,
      ),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 19,
              right: 19,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 37, bottom: 73),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.52,
                    width: MediaQuery.of(context).size.width / 1.09,
                    child: Image.asset('assets/images/logo.jpeg'),
                  ),
                ),
                Text(
                  "Votre commune pense a vous",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 74,
                ),
                ButtonBar(
                  buttonHeight: 47,
                  buttonMinWidth: 160,
                  buttonPadding: EdgeInsets.only(
                    top: 11,
                    bottom: 10,
                  ),
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RaisedButton(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 27, right: 27),
                        child: Text(
                          "Se connecter",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 253, 253, 1),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      width: 48,
                    ),
                    RaisedButton(
                      color: Color.fromRGBO(0, 191, 192, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 45, right: 45),
                        child: Text(
                          "S’incrire",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 253, 253, 1),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: SizedBox(
        //height: MediaQuery.of(context).size.height / 11,
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height / 15,
          ),
          child: Container(
            height: 1,
            color: Colors.black12,
          ),
        ),
      ),
    );
  }
}
