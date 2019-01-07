import 'package:flutter/material.dart';
import 'package:josi_gram/pages/favorite_page.dart';
import 'package:josi_gram/pages/home_page.dart';
import 'package:josi_gram/pages/plus_page.dart';
import 'package:josi_gram/pages/profile_page.dart';
import 'package:josi_gram/pages/search_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePages> {
  String currentPageName = 'Home';

//  final List children = [
//    HomePage(),
//    SearchPage(),
//    PlusPage(),
//    FavoritePage(),
//    ProfilePage()
//  ];

  final Map<String, Widget> children = <String, Widget>{
    'Home': HomePage(),
    'Search': SearchPage(),
    'Plus': PlusPage(),
    'Favorite': FavoritePage(),
    'Profile': ProfilePage()
  };

  final appbar = new AppBar(
    backgroundColor: Color(0xFFF8F8F8),
    elevation: 1.0,
    centerTitle: true,
    leading: Icon(FontAwesomeIcons.camera),
    title: SizedBox(
      height: 40.0,
      child: Image.asset("assets/images/insta_logo.png"),
    ),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.9),
        child: Icon(Icons.tv),
      ),
      Padding(
        padding: EdgeInsets.only(left: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  changePage(String namePage) {
    setState(() {
      currentPageName = namePage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: this.children[currentPageName],
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                onPressed: () {
                  changePage('Home');
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {
                  changePage('Search');
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.add_box,
                  color: Colors.black87,
                ),
                onPressed: () {
                  changePage('Plus');
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
                onPressed: () {
                  changePage('Favotite');
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.black,
                ),
                onPressed: () {
                  changePage('Profile');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  final appbar = new AppBar(
//    backgroundColor: Color(0xFFF8F8F8),
//    elevation: 1.0,
//    centerTitle: true,
//    leading: Icon(Icons.camera_alt),
//    title: SizedBox(
//      height: 40.0,
//      child: Image.asset("assets/images/insta_logo.png"),
//    ),
//    actions: <Widget>[
//      Padding(
//        padding: EdgeInsets.symmetric(horizontal: 12.9),
//        child: Icon(Icons.tv),
//      ),
//      Padding(
//        padding: EdgeInsets.only(right: 12.0),
//        child: Icon(Icons.send),
//      )
//    ],
//  );

//  changePage(int indexPage) {
//    setState(() {
//      currentPageIndex = indexPage;
//    });
//  }

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: appbar,
//      body: this.children[currentPageIndex],
//      bottomNavigationBar: BottomNavigationBar(
//        items: <BottomNavigationBarItem>[
//          BottomNavigationBarItem(
//              icon: Icon(
//                Icons.home,
//                color: Colors.black,
//              ),
//              title: Text(
//                'Home',
//                style: TextStyle(color: Colors.black),
//              )),
//          BottomNavigationBarItem(
//              icon: Icon(
//                Icons.search,
//                color: Colors.black,
//              ),
//              title: Text(
//                'Search',
//                style: TextStyle(color: Colors.black),
//              )),
//          BottomNavigationBarItem(
//              icon: Icon(
//                Icons.add_box,
//                color: Colors.black,
//              ),
//              title: Text(
//                'Plus',
//                style: TextStyle(color: Colors.black),
//              )),
//          BottomNavigationBarItem(
//              icon: Icon(
//                Icons.favorite_border,
//                color: Colors.black,
//              ),
//              title: Text(
//                'Favorite',
//                style: TextStyle(color: Colors.black),
//              )),
//          BottomNavigationBarItem(
//              icon: Icon(
//                Icons.account_circle,
//                color: Colors.black,
//              ),
//              title: Text(
//                'Profile',
//                style: TextStyle(color: Colors.black),
//              )),
//        ],
//        onTap: changePage,
//        currentIndex: currentPageIndex,
//      ),
//    );
//  }
// }
