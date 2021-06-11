import 'package:flutter/material.dart';
import 'InstaPost.dart';

class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Flexible(child: InstaPosts())],
      ),
    );
  }
}
