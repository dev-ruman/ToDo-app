import 'package:flutter/material.dart';

class Todobox extends StatelessWidget {
  final double width;
  final String title;
  final bool checked;
  final Function(bool?)? onChecked;

  Todobox(
      {super.key,
      required this.width,
      required this.title,
      required this.checked,
      required this.onChecked});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.deepPurple,
      ),
      child: Row(
        children: [
          Checkbox(
            value: false,
            onChanged: onChecked,
          ),
          Text(title),
        ],
      ),
    );
  }
}
