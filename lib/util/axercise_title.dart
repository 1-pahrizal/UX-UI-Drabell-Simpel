import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppAxesxies extends StatelessWidget {
  final icon;
  final String exname;
  final int numberOfEx;
  final color;
  const AppAxesxies(
      {Key? key,
      required this.icon,
      required this.exname,
      required this.color,
      required this.numberOfEx})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                      padding: EdgeInsets.all(16),
                      color: color,
                      child: Icon(icon, color: Colors.white)),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title
                    Text(
                      exname,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //subtutle
                    Text(
                      numberOfEx.toString() + 'Exercices',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}
