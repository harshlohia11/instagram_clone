import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'insta_body.dart';

class HomePage extends StatelessWidget {
  final appBar = AppBar(
    backgroundColor: Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.add_box_outlined),
    title: SizedBox(
        height: 40.0, child: Image.asset('assets/images/insta_logo.png')),
    actions: [
      IconButton(
        icon: FaIcon(FontAwesomeIcons.facebookMessenger),
        onPressed: () {},
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: InstaBody(),
      bottomNavigationBar: Container(
        height: 60.0,
        color: Colors.white,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.home), onPressed: () {}),
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(
                  icon: FaIcon(FontAwesomeIcons.instagramSquare),
                  onPressed: () {}),
              IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
              IconButton(icon: Icon(Icons.account_box), onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
