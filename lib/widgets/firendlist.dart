import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirendList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _Firend("Soheildanesh"),
          _Firend("kylie.n"),
          _Firend("parisa.taash"),
          _Firend("mike.mk"),
          _Firend("name 5"),
        ],
      ),
    );
  }
}

Widget _Firend(String name) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage("https://i.pinimg.com/564x/ae/96/fe/ae96fe91ebc26614fdf420e11cc1e39c.jpg"))),
        ),
        SizedBox(height: 10,),
        Text(
          "$name",
          style: TextStyle(color: Color(0xFF717171) , fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
