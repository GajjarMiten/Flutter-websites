import 'package:flutter/material.dart';
import 'package:pokedex/pages/bodypage.dart';
import 'package:pokedex/style.dart';
import 'package:pokedex/widgets/footer.dart';
import 'package:pokedex/widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 32.0, bottom: 16.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Hero(
                  tag: "header",
                  child: Header(),
                ),
                Footer(),
              ],
            ),
            BodyPage(),
          ],
        ),
      ),
    );
  }
}
