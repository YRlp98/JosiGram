import 'package:flutter/material.dart';
import 'package:josi_gram/my_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Josigram',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.black,
          fontFamily: 'Vazir',
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black)),
        ),
        home: Directionality(
            textDirection: TextDirection.rtl, child: MyHomePages()));
  }
}
