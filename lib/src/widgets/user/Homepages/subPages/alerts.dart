import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/material.dart';

class AlertsPage extends StatefulWidget {
  @override
  _AlertsPageState createState() => _AlertsPageState();
}

class _AlertsPageState extends State<AlertsPage> {
  final formKey = new GlobalKey<FormState>();
  var validTitle = null;
  var title;

  String _myActivity;
  String _myActivityResult;

  @override
  void initState() {
    super.initState();
    _myActivity = '';
    _myActivityResult = '';
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _myActivityResult = _myActivity;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 19,
            right: 19,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 1.5,
                  ),
                  child: titleField(context),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                ),
                child: Form(
                  key: formKey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width / 1.5,
                        ),
                        color: Color.fromRGBO(0, 191, 192, 0.14),
                        child: DropDownFormField(
                          titleText: 'Catégorie',
                          filled: false,
                          contentPadding: EdgeInsets.only(left: 10, top: 5),
                          hintText: "Choisissez en un s'il vous plait",
                          value: _myActivity,
                          onSaved: (value) {
                            setState(() {
                              _myActivity = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _myActivity = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Choice1",
                              "value": "Choice1",
                            },
                            {
                              "display": "Choice2",
                              "value": "Choice2",
                            },
                            {
                              "display": "Choice3",
                              "value": "Choice3",
                            },
                            {
                              "display": "Choice4",
                              "value": "Choice4",
                            },
                            {
                              "display": "Choice5",
                              "value": "Choice5",
                            },
                            {
                              "display": "Choice6",
                              "value": "Choice6",
                            },
                            {
                              "display": "Choice7",
                              "value": "Choice7",
                            },
                            {
                              "display": "Choice8",
                              "value": "Choice8",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 37,
                      ),
                      GestureDetector(
                        child: FlatButton(
                          height: 72,
                          color: Color.fromRGBO(0, 191, 192, 0.14),
                          onPressed: () => _saveForm,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(Icons.upload_file),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Container(
                  color: Color.fromRGBO(0, 191, 192, 0.14),
                  child: TextField(
                    cursorColor: Colors.black,

                    keyboardType: TextInputType.multiline,
                    minLines: 5, //Normal textInputField will be displayed
                    maxLines: 20,

                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                        left: 16,
                        top: 12,
                      ),
                      hintText: 'Decription de l’alerte ...',
                    ), // when user presses enter it will adapt to it
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    FlatButton(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 25),
                        child: Text(
                          "Valider",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 253, 253, 1),
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 26, bottom: 26),
                      child: Text(
                        'Ou',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 36),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 17.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 191, 192, 1),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 14, horizontal: 14),
                            child: Image.asset(
                              'assets/images/phone.png',
                              height: 65,
                              width: 65,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Text('Demarrer un appel'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget titleField(context) {
    return Material(
      color: Color.fromRGBO(0, 191, 192, 0.1),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Titre',

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
        onSaved: (title) {
          this.title = title;
        },
        autovalidate: true,
        validator: (title) {
          return validTitle;
        },
        onChanged: (title) {
          if (title.isEmpty) {
            setState(() {
              validTitle = "Field required";
            });
          } else {
            setState(() {
              validTitle = null;
            });
          }
        },
      ),
    );
  }
}
