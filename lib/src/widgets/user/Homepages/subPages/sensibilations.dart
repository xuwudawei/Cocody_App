import 'package:cocody/src/providers/sensibilationsProvider.dart';
import 'package:cocody/src/widgets/user/Homepages/subPages/sensibilationsTile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SensibilationsPage extends StatefulWidget {
  @override
  _SensibilationsPageState createState() => _SensibilationsPageState();
}

class _SensibilationsPageState extends State<SensibilationsPage> {
  @override
  Widget build(BuildContext context) {
    final mySensibilisations =
        Provider.of<SensibilationsProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: mySensibilisations.getAllSensibilations.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return SensibilationsTile(
                  content:
                      mySensibilisations.getAllSensibilations[index].content,
                  category:
                      mySensibilisations.getAllSensibilations[index].category,
                  currentAmount: mySensibilisations
                      .getAllSensibilations[index].currentAmount,
                  intendedAmount: mySensibilisations
                      .getAllSensibilations[index].intendedAmount,
                  date: mySensibilisations.getAllSensibilations[index].date,
                  description: mySensibilisations
                      .getAllSensibilations[index].description,
                  imageUrl:
                      mySensibilisations.getAllSensibilations[index].imageUrl,
                  title: mySensibilisations.getAllSensibilations[index].title,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
