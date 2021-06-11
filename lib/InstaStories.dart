import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/mypic.png"),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 8.0),
              ),
              index == 0
                  ? Positioned(
                      right: 10.0,
                      child: CircleAvatar(
                        radius: 14.0,
                        backgroundColor: Colors.blueAccent,
                        child: Icon(Icons.add, size: 14.0, color: Colors.white),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
