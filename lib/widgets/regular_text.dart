import 'package:flutter/cupertino.dart';

class RegularText extends StatelessWidget {
  Color? color;
  double height;
  final String text;
  double fontSize;

  RegularText({
    Key? key,
    this.color = const Color(0xFFccc7c5),
    required this.text,
    this.fontSize = 12,
    this.height = 1.3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: fontSize,
        height: height,
      ),
    );
  }
}
