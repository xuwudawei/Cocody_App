import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart' as vd;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var validEmail = null;
  var email;
  var validPassword = null;
  var regNo;
  var password;
  bool invalid = false;
  bool exist = true;
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
              left: 19,
              right: 19,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 23),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.2,
                    width: MediaQuery.of(context).size.width / 1.58,
                    child: Image.asset('assets/images/logo.jpeg'),
                  ),
                ),
                Text(
                  "Pour commencer veuillez nous fournir des informations",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 39,
                ),
                emailField(context),
                SizedBox(
                  height: 39,
                ),
                passwordField(context),
                SizedBox(
                  height: 39,
                ),
                GestureDetector(
                  child: Text(
                    "Mot de passe oublié ?",
                    style: TextStyle(
                      color: Color.fromRGBO(193, 0, 0, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 39,
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
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 39,
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

  Widget emailField(context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Color.fromRGBO(0, 191, 192, 0.1),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Entrer votre email',
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(0, 191, 192, 0.1))),
          focusedErrorBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          errorBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 27, vertical: 20),
        ),
        onSaved: (emails) {
          this.email = emails;
        },
        autovalidate: true,
        validator: (emails) => validEmail,
        onChanged: (emails) {
          if (vd.EmailValidator.validate(emails)) {
            setState(() {
              validEmail = null;
            });
          } else {
            setState(() {
              validEmail = "Please enter a valid email";
            });
          }
        },
      ),
    );
  }

  Widget passwordField(context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Color.fromRGBO(0, 191, 192, 0.1),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Entrer votre mot de passe',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(0, 191, 192, 0.1),
            ),
          ),
          focusedErrorBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          errorBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          border: InputBorder.none,
        ),
        onSaved: (password) {
          this.password = password;
        },
        onChanged: (data) {
          setState(() {
            invalid = false;
            exist = true;
          });
        },
      ),
    );
  }
}
