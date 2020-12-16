import 'package:cocody/src/providers/NewsProvider.dart';
import 'package:cocody/src/widgets/user/Homepages/subPages/newsTile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    final myNews = Provider.of<NewsProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: myNews.getAllNews.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return NewsTile(
                  source: myNews.getAllNews[index].source,
                  content: myNews.getAllNews[index].content,
                  date: myNews.getAllNews[index].date,
                  description: myNews.getAllNews[index].description,
                  imageUrl: myNews.getAllNews[index].imageUrl,
                  title: myNews.getAllNews[index].title,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
