import 'package:cocody/src/helper/NewsData.dart';
import 'package:cocody/src/helper/sensibilationsData.dart';
import 'package:cocody/src/models/newsCardModel.dart';
import 'package:cocody/src/models/sensibilationsCardModel.dart';
import 'package:cocody/src/providers/NewsProvider.dart';
import 'package:cocody/src/providers/botomNav.dart';
import 'package:cocody/src/providers/sensibilationsProvider.dart';
import 'package:cocody/src/widgets/user/Homepages/subPages/alerts.dart';
import 'package:cocody/src/widgets/user/Homepages/subPages/news.dart';
import 'package:cocody/src/widgets/user/Homepages/subPages/sensibilations.dart';
import 'package:cocody/src/widgets/user/Homepages/subPages/sensibilationsTile.dart';
import 'package:cocody/src/widgets/user/Homepages/subPages/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  var selectedNav = 0;
  String _appBarTitle;

  @override
  initState() {
    // TODO: implement initState
    super.initState();
    _appBarTitle = 'Actualités';
    fetchAllNews();
    fetchAllSensibilations();
  }

  List<Widget> _widgetOptions = <Widget>[
    NewsPage(),
    SensibilationsPage(),
    AlertsPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    BottomNavProvider bot =
        Provider.of<BottomNavProvider>(context, listen: false);
    bot.setBotoNav(index);
    setState(() {
      switch (index) {
        case 0:
          {
            _appBarTitle = 'Actualités';
          }
          break;
        case 1:
          {
            _appBarTitle = 'Sensibilisations';
          }
          break;
        case 2:
          {
            _appBarTitle = 'Alertes';
          }
          break;
        case 3:
          {
            _appBarTitle = 'Paramètres';
          }
          break;
      }
    });
  }

  void fetchAllNews() {
    var allNews = Provider.of<NewsProvider>(context, listen: false);
    List<NewsCardModel> news = getAllNews();
    allNews.setNews(news);
    //print(allMessages.getAllMessages.length);
  }

  void fetchAllSensibilations() {
    var allSensibilations =
        Provider.of<SensibilationsProvider>(context, listen: false);
    List<SensibilationsCardModel> sensibilations = getAllSensibilations();
    allSensibilations.setSensibilations(sensibilations);
    //print(allMessages.getAllMessages.length);
  }

  @override
  Widget build(BuildContext context) {
    BottomNavProvider botom =
        Provider.of<BottomNavProvider>(context, listen: false);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        leadingWidth: 5,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Image.asset(
              "assets/images/logo.jpeg",
              width: 80,
              height: 50,
            ),
          ),
        ],
        title: Text(
          _appBarTitle,
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: _widgetOptions.elementAt(botom.getDefaut()),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 3,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            title: Padding(padding: EdgeInsets.all(0)),
            icon: Image.asset(
              "assets/images/news.png",
              width: 35,
              height: 35,
            ),
          ),
          BottomNavigationBarItem(
            title: Padding(padding: EdgeInsets.all(0)),
            icon: Image.asset(
              "assets/images/sensibilations.png",
              width: 35,
              height: 35,
            ),
          ),
          BottomNavigationBarItem(
            title: Padding(padding: EdgeInsets.all(0)),
            icon: Image.asset(
              "assets/images/alert.png",
              width: 35,
              height: 35,
            ),
          ),
          BottomNavigationBarItem(
            title: Padding(padding: EdgeInsets.all(0)),
            icon: Image.asset(
              "assets/images/settings.png",
              width: 35,
              height: 35,
            ),
          ),
        ],
        onTap: _onItemTapped,
        currentIndex: botom.getDefaut(),
      ),
    );
  }
}
