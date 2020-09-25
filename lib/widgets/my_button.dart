import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final Color color;
  final String label;
  final Icon icon;
  final Widget child;
  final Function onPressed;

  const MyButton({Key key, this.color, this.label, this.icon, this.child, this.onPressed})
      : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      // child: Row(
      //   children: [
      //     icon ?? SizedBox() ,
      //     Text(label != '' ? "$label" : "ไม่มีค่าส่งมา")
      //   ],
      // ),
      child: widget.child,
      textColor: Colors.white,
      color: widget.color ?? Color(0xff3094F9),
      onPressed: widget.onPressed ?? (){},
    );
  }
}
