import 'package:flutter/material.dart';
import 'package:instargram_app/widgets/feed_card.dart';
import 'package:instargram_app/widgets/firendlist.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFF9F9F9),
        leading: Image.asset("assets/images/camera.png"),
        title: Image.asset("assets/images/Instagram_logo.png"),
        actions: [
          Image.asset("assets/images/send.png"),
        ],
      ),
      body: Column(
        children: [
          FirendList(),
          Divider(color: Color(0xFFE4E4E4), height: 1,),
          FeedCard()
        ],
      ),
    );
  }
}
