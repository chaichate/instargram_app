import 'package:flutter/material.dart';
import 'package:instargram_app/widgets/my_button.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xffF2F2F2),
        elevation: 0.0,
        leading: Image.asset('assets/images/arrow_prev.png'),
        title: Text(
          "mahsa.mozaffarian",
          style: TextStyle(color: Color(0xFF464646)),
        ),
        actions: [
          Icon(
            Icons.more_horiz,
            color: Color(0xFF606060),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xffF2F2F2),
              // borderRadius: BorderRadius.vertical(bottom:  Radius.circular(30.0))
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)),
              border: Border.all(
                color: Color(0xFFB9B9B9),
              ),
              // border: Border(
              //   left: BorderSide(
              //     color: Colors.black,
              //     width: 3.0,
              //   ),
              //   top: BorderSide(
              //     //                    <--- top side
              //     color: Colors.black,
              //     width: 3.0,
              //   ),
              // ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://i.pinimg.com/564x/ae/96/fe/ae96fe91ebc26614fdf420e11cc1e39c.jpg"))),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "53",
                      style: TextStyle(
                          color: Color(0xff464646),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "Post",
                      style: TextStyle(
                          color: Color(0xff464646),
                          fontWeight: FontWeight.normal,
                          fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "650",
                      style: TextStyle(
                          color: Color(0xff464646),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(
                          color: Color(0xff464646),
                          fontWeight: FontWeight.normal,
                          fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "850",
                      style: TextStyle(
                          color: Color(0xff464646),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                          color: Color(0xff464646),
                          fontWeight: FontWeight.normal,
                          fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mahsa",
                  style: TextStyle(
                      color: Color(0xff464646),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(
                  "Graphic designer",
                  style: TextStyle(
                      color: Color(0xffA1A1A1),
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
                Text(
                  "Followed by kylie.n, itsmnx and 29 others ",
                  style: TextStyle(
                      color: Color(0xff464646),
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
                Row(
                  children: [
                    MyButton(
                      onPressed: (){
                        print("follow");
                      },
                      child: Row(
                        children: [Icon(Icons.add), Text("Follow")],
                      ),
                      icon: Icon(Icons.close),
                    ),
                    MyButton(
                      onPressed: (){
                        print("message");
                      },
                      color: Colors.black,
                      child: Text("Message"),
                    ),
                    MyButton(
                      onPressed: (){
                        print("Email");
                      },
                      color: Colors.red,
                      child: Text("Email"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
