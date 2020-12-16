import 'package:cocody/src/widgets/user/signUpPages/signUp2.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart' as vd;
import 'package:form_field_validator/form_field_validator.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var validEmail = null;
  var email;
  var validPassword = null;
  var password;
  var validConfirmPassword = null;
  var confirmPassword;
  var savedPass = "";
  var savedConfirmPass = "";
  bool invalid = false;
  bool exist = true;
  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ]);
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
                  "Pour commencer veuillez nous fournir des informations",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                emailField(context),
                SizedBox(
                  height: 27,
                ),
                passwordField(context),
                SizedBox(
                  height: 27,
                ),
                confirmPasswordField(context),
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
                            builder: (context) => SignUp2(),
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
          hintText: 'Créer un mot de passe',
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
        onSaved: (passwordo) {
          this.password = passwordo;
        },
        autovalidate: true,
        validator: (passwordo) => validPassword,
        onChanged: (passwordo) {
          savedPass = passwordo;
          setState(() {
            validPassword = passwordValidator(passwordo);
          });
        },
      ),
    );
  }

  Widget confirmPasswordField(context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Color.fromRGBO(0, 191, 192, 0.1),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Retaper le mot de passe',
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
        onSaved: (passwordo) {
          this.confirmPassword = passwordo;
        },
        autovalidate: true,
        validator: (passwordo) => validConfirmPassword,
        onChanged: (passwordo) {
          savedConfirmPass = passwordo;
          setState(() {
            validConfirmPassword = passwordValidator(passwordo);
          });
        },
      ),
    );
  }
}
