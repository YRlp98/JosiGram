import 'package:flutter/material.dart';
import 'package:josi_gram/stories_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;

    print(deviceSize);

    final instagramPost = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 8.0),
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://www.gravatar.com/avatar/8201dd56f00e0a27bbef119b0397efbe?s=150&d=mm&r=g'))),
                  ),
                  Text(
                    'یوسف روشندل',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 14.0),
                  ),
                ],
              ),
              IconButton(icon: Icon(Icons.more_vert), onPressed: null)
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: Image.network(
              'https://roocket.ir/public/image/2018/9/23/flutter-1.png',
              fit: BoxFit.cover,
            ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
//                  IconButton(
//                      icon: Icon(
//                        FontAwesomeIcons.heart,
//                        color: Colors.black,
//                      ),
//                      onPressed: null),
                  GestureDetector(
                      onTap: () {
                        print('Pressed');
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 12.0),
                        child: Icon(
                          FontAwesomeIcons.heart,
                          color: Colors.black87,
                        ),
                      )),
                  GestureDetector(
                      onTap: () {
                        print('Pressed');
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 12.0),
                        child: Icon(
                          FontAwesomeIcons.comment,
                          color: Colors.black,
                        ),
                      )),
                  GestureDetector(
                    onTap: () {
                      print('Pressed');
                    },
                    child: Padding(
                        padding: EdgeInsets.only(right: 12.0),
                        child: Icon(
                          FontAwesomeIcons.paperPlane,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.bookmark,
                    color: Colors.black,
                  ),
                  onPressed: null)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: Text(
            'آی‌میون و یوسف و 50.000 نفر دیگر لایک کرده‌اند',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.gravatar.com/avatar/8201dd56f00e0a27bbef119b0397efbe?s=150&d=mm&r=g'))),
                margin: const EdgeInsets.only(left: 5.0, right: 12.0),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'دیدگاه خود را بذارید...',
                      hintStyle: TextStyle(fontWeight: FontWeight.w500)),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            '2 روز پیش',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );

    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return index == 0
              ? SizedBox(
                  child: StoriesList(),
                  height: deviceSize.height * 0.15,
                )
              : instagramPost;
        });
  }
}
