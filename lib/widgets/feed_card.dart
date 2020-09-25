import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _top(),
        SizedBox(
          height: 10,
        ),
        Image.asset('assets/images/feed1.png'),
        _footer()
      ],
    );
  }
}

Widget _top() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage(
                      "https://i.pinimg.com/564x/ae/96/fe/ae96fe91ebc26614fdf420e11cc1e39c.jpg"))),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "mahsa.mozaffarian",
          style: TextStyle(
              color: Color(0xFF464646),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        Spacer(),
        Icon(
          Icons.more_horiz,
          color: Color(0xFF606060),
        )
      ],
    ),
  );
}

Widget _footer() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset("assets/images/hart_red.png"),
            SizedBox(
              width: 20,
            ),
            Image.asset("assets/images/comment.png"),
            SizedBox(
              width: 20,
            ),
            Image.asset("assets/images/send.png"),
            Spacer(),
            Image.asset("assets/images/bookmark.png"),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text("230 likes",
            style: TextStyle(
                color: Color(0xFF464646),
                fontWeight: FontWeight.normal,
                fontSize: 18)),
        SizedBox(
          height: 15,
        ),
        Text(
          "mahsa.mozaffarian",
          style: TextStyle(
              color: Color(0xFF464646),
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "View 29 comment",
          style: TextStyle(color: Color(0xFFA1A1A1), fontSize: 16),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "2 hours ago",
          style: TextStyle(color: Color(0xFFA1A1A1), fontSize: 12),
        ),
      ],
    ),
  );
}
