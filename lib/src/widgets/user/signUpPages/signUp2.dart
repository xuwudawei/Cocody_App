import 'package:cocody/src/widgets/user/signUpPages/signUp3.dart';
import 'package:flutter/material.dart';

class SignUp2 extends StatefulWidget {
  @override
  _SignUp2State createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  var validName = null;
  var userName;
  var validFirstName = null;
  var userFirstName;
  var validPhone = null;
  var userPhone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 1,
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
      ),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 27),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.2,
                    width: MediaQuery.of(context).size.width / 1.58,
                    child: Image.asset('assets/images/logo.jpeg'),
                  ),
                ),
                Text(
                  "Votre bien être , notre vocation",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                nameField(context),
                SizedBox(
                  height: 27,
                ),
                firstNameField(context),
                SizedBox(
                  height: 27,
                ),
                phoneField(context),
                SizedBox(
                  height: 27,
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
                      color: Color.fromRGBO(0, 191, 192, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 45, right: 45),
                        child: Text(
                          "Suivant",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 253, 253, 1),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp3(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
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

  Widget nameField(context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Color.fromRGBO(0, 191, 192, 0.1),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Entrer votre nom',
          //enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: color)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(0, 191, 192, 0.1),
            ),
          ),
          focusedErrorBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          errorBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          contentPadding: EdgeInsets.symmetric(horizontal: 27, vertical: 20),

          border: InputBorder.none,
        ),
        onSaved: (username) {
          this.userName = username;
        },
        autovalidate: true,
        validator: (username) {
          return validName;
        },
        onChanged: (username) {
          if (username.isEmpty) {
            setState(() {
              validName = "Field required";
            });
          } else {
            setState(() {
              validName = null;
            });
          }
        },
      ),
    );
  }

  Widget firstNameField(context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Color.fromRGBO(0, 191, 192, 0.1),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Entrer votre prénom',
          //enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: color)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(0, 191, 192, 0.1),
            ),
          ),
          focusedErrorBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          errorBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          contentPadding: EdgeInsets.symmetric(horizontal: 27, vertical: 20),

          border: InputBorder.none,
        ),
        onSaved: (userFirstName) {
          this.userFirstName = userFirstName;
        },
        autovalidate: true,
        validator: (userFirstName) {
          return validFirstName;
        },
        onChanged: (userFirstName) {
          if (userFirstName.isEmpty) {
            setState(() {
              validFirstName = "Field required";
            });
          } else {
            setState(() {
              validFirstName = null;
            });
          }
        },
      ),
    );
  }

  Widget phoneField(context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Color.fromRGBO(0, 191, 192, 0.1),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Entrer votre numéro téléphone',
          //enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: color)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(0, 191, 192, 0.1),
            ),
          ),
          focusedErrorBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          errorBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          contentPadding: EdgeInsets.symmetric(horizontal: 27, vertical: 20),

          border: InputBorder.none,
        ),
        onSaved: (userphone) {
          this.userPhone = userphone;
        },
        autovalidate: true,
        validator: (userphone) {
          return validPhone;
        },
        onChanged: (userphone) {
          if (userphone.isEmpty) {
            setState(() {
              validPhone = "Field required";
            });
          } else {
            setState(() {
              validPhone = null;
            });
          }
        },
      ),
    );
  }
}
