import 'package:cocody/src/widgets/user/Homepages/main.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

class SignUp3 extends StatefulWidget {
  @override
  _SignUp3State createState() => _SignUp3State();
}

class _SignUp3State extends State<SignUp3> {
  TextEditingController dateCtl = TextEditingController();
  var validAddress = null;
  var userAddress;
  var validDateOB = null;
  var userDateOB;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    dateCtl.dispose();
    super.dispose();
  }

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
                  "Votre mairie toujours la pour vous !",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                addressField(context),
                SizedBox(
                  height: 27,
                ),
                Material(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromRGBO(0, 191, 192, 0.1),
                  child: TextFormField(
                    controller: dateCtl,
                    decoration: InputDecoration(
                      hintText: 'Selectionner votre date de naissance',
                      //enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: color)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 191, 192, 0.1),
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      contentPadding: EdgeInsets.symmetric(vertical: 20),
                      prefixIcon: Icon(Icons.arrow_downward),
                      border: InputBorder.none,
                    ),
                    onTap: () async {
                      DateTime date = DateTime(1900);
                      FocusScope.of(context).requestFocus(new FocusNode());

                      date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100));

                      dateCtl.text =
                          DateFormat("dd-MM-yyyy").format(date).toString();
                    },
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                Row(
                  children: <Widget>[
                    GestureDetector(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Color.fromRGBO(0, 191, 192, 0.1),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(Icons.upload_file),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Ajouter votre CNI/Extrait de naissance",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black.withOpacity(0.5),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
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
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/login/home', (Route<dynamic> route) => false);
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

  Widget addressField(context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Color.fromRGBO(0, 191, 192, 0.1),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Entrer votre adresse',
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
        onSaved: (useraddress) {
          this.userAddress = useraddress;
        },
        autovalidate: true,
        validator: (useraddress) {
          return validAddress;
        },
        onChanged: (useraddress) {
          if (useraddress.isEmpty) {
            setState(() {
              validAddress = "Field required";
            });
          } else {
            setState(() {
              validAddress = null;
            });
          }
        },
      ),
    );
  }
}
