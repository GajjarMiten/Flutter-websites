import 'package:flutter/material.dart';
import 'package:pokedex/model/character.dart';
import 'package:pokedex/style.dart';
import 'package:pokedex/widgets/header.dart';
import 'package:pokedex/widgets/slideAnimatedWidget.dart';

class DetailsPage extends StatefulWidget {
  final Character character;
  DetailsPage(this.character);
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Hero(
              tag: "header",
              child: Header(),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: SlideAnimation(
                begin: Offset(0, -0.5),
                end: Offset(0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 205,
                    ),
                    RotatedBox(
                      quarterTurns: -1,
                      child: Text(
                        widget.character.name,
                        style: title,
                      ),
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    RotatedBox(
                      quarterTurns: -1,
                      child: Text(
                        "Gumball",
                        style: subTitle.apply(color: Colors.black54),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_downward_rounded,
                      size: 45,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: size.height * 0.75,
              width: size.width * 0.86,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(90)),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: widget.character.background,
                ),
              ),
              child: Stack(
                children: [
                  Hero(
                    tag: widget.character.description,
                    child: Container(
                      height: size.height * 0.75,
                      width: size.width * 0.86,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(90)),
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: widget.character.background,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.86 / 2.8,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Hero(
                              tag: widget.character.name,
                              child: Material(
                                color: Colors.transparent,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: widget.character.name + "\n",
                                        style:
                                            headeings.apply(fontSizeDelta: 25),
                                      ),
                                      TextSpan(
                                        text: widget.character.showName,
                                        style: subHeadeings.apply(
                                            fontSizeDelta: 15),
                                      ),
                                    ],
                                  ),
                                  textDirection: TextDirection.ltr,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, right: 8.0, bottom: 8.0),
                              child: Text(
                                widget.character.description,
                                style: subHeadeings.apply(fontSizeDelta: 1.1),
                              ),
                            ),
                            Text("Clips", style: headeings),
                            SizedBox(
                              height: 15,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: widget.character.clips.map((clip) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: SlideAnimation(
                                      begin: Offset(5, 0),
                                      end: Offset(0, 0),
                                      child: Container(
                                        height: 130,
                                        width: 210,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: Image.asset(
                                                    "assets/clips/$clip")
                                                .image,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.65),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.close),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Close",
                    style: subTitle,
                  ),
                  SizedBox(
                    width: 38,
                  ),
                ],
              ),
            ),
          ),
          Hero(
            tag: widget.character.image,
            child: AnimatedAlign(
              duration: Duration(milliseconds: 300),
              alignment: Alignment(-0.5, 0),
              child: Image.asset(
                widget.character.image,
                scale: (widget.character.imageScale - 2 > 0)
                    ? widget.character.imageScale - 1.0
                    : widget.character.imageScale - 0.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
