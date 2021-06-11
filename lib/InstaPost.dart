import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/InstaStories.dart';

class InstaPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              height: deviceSize.height * 0.12,
              child: InstaStories(),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    children: [
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/mypic.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "harsh11",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: deviceSize.width * 0.57,
                      ),
                      IconButton(icon: Icon(Icons.more_vert), onPressed: null)
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Image.asset(
                    "assets/images/mypic.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.heart),
                      SizedBox(
                        width: 16.0,
                      ),
                      Icon(FontAwesomeIcons.comment),
                      SizedBox(
                        width: 16.0,
                      ),
                      Icon(FontAwesomeIcons.paperPlane),
                      SizedBox(width: deviceSize.width * 0.58),
                      Icon(FontAwesomeIcons.bookmark)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
                  child: Text(
                    "Liked by you,rahul23 and 160 others",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/mypic.png"),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment"),
                      ))
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "5 hours ago",
                      style: TextStyle(color: Colors.grey),
                    ))
              ],
            ),
    );
  }
}
