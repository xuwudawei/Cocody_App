import 'package:cocody/src/providers/botomNav.dart';
import 'package:cocody/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool logged = false;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BottomNavProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: logged ? '/login/home' : '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
