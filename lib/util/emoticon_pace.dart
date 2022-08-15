import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonpace;
  const EmoticonFace({Key? key, required this.emoticonpace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(16),
      child: Text(
        emoticonpace,
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
