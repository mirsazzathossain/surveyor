import 'package:flutter/cupertino.dart';

class HeaderText extends StatelessWidget {
  Color? color;
  final String text;
  double fontSize;
  TextOverflow overflow;

  HeaderText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.fontSize = 20,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
