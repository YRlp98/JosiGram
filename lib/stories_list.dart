import 'package:flutter/material.dart';

class StoriesList extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        'استوری ها',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: <Widget>[
          Icon(Icons.play_arrow),
          Text(
            'نمایش همه',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      )
    ],
  );

  final stories = Expanded(
    child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://www.gravatar.com/avatar/8201dd56f00e0a27bbef119b0397efbe?s=150&d=mm&r=g'))),
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                  ),
                  index == 0
                      ? Positioned(
                          right: 0.0,
                          bottom: 0.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.blueAccent,
                            radius: 10.0,
                            child: Icon(
                              Icons.add,
                              size: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Container()
                ],
              );
            })),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[topText, stories],
      ),
    );
  }
}
