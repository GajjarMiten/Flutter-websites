import 'package:flutter/material.dart';
import 'package:pokedex/model/character.dart';
import 'package:pokedex/pages/detailspage.dart';
import 'package:pokedex/widgets/slideAnimatedWidget.dart';

import '../style.dart';

class CharacterCard extends StatefulWidget {
  final Character character;

  CharacterCard({this.character});
  @override
  _CharacterCardState createState() => _CharacterCardState();
}

class _CharacterCardState extends State<CharacterCard> {
  Alignment imageAlignment;
  Alignment textAlignment = Alignment(-1, 1);
  Alignment secTextAlignment = Alignment(-1, 1.5);
  double secTextOpacity = 0;

  Duration duration = Duration(milliseconds: 300);

  @override
  void initState() {
    imageAlignment = widget.character.imageAlignment;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            textAlignment = Alignment(-1, 0);
            secTextAlignment = Alignment(-1, 1);
            secTextOpacity = 1;
            imageAlignment = Alignment(
              widget.character.imageAlignment.x,
              widget.character.imageAlignment.y - 0.5,
            );
          });
        },
        onExit: (event) {
          setState(() {
            textAlignment = Alignment(-1, 1);
            secTextAlignment = Alignment(-1, 1.5);
            secTextOpacity = 0;
            imageAlignment = widget.character.imageAlignment;
          });
        },
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          splashColor: Colors.transparent,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => DetailsPage(widget.character),
              ),
            );
          },
          child: SlideAnimation(
            waitTime: 3,
            begin: Offset(1, 0),
            end: Offset(0, 0),
            child: Container(
              height: 300,
              width: 230,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: widget.character.boxHeight,
                    width: 200,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: widget.character.background.last
                              .withOpacity(0.65),
                          offset: Offset(0, 5),
                          blurRadius: 20,
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: widget.character.background,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Hero(
                          tag: widget.character.showName,
                          child: Container(
                            height: widget.character.boxHeight,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: widget.character.background,
                              ),
                            ),
                          ),
                        ),
                        AnimatedAlign(
                          duration: duration,
                          alignment: textAlignment,
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Hero(
                              tag: widget.character.name,
                              child: Material(
                                color: Colors.transparent,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: widget.character.name + "\n",
                                        style: headeings,
                                      ),
                                      TextSpan(
                                        text: widget.character.showName,
                                        style: subHeadeings,
                                      ),
                                    ],
                                  ),
                                  textDirection: TextDirection.ltr,
                                ),
                              ),
                            ),
                          ),
                        ),
                        AnimatedAlign(
                          duration: duration,
                          alignment: secTextAlignment,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 24.0, bottom: 16.0),
                            child: AnimatedOpacity(
                              opacity: secTextOpacity,
                              duration: duration,
                              child: Row(
                                children: [
                                  Text(
                                    "READ MORE",
                                    style: subHeadeings,
                                  ),
                                  Icon(
                                    Icons.arrow_right_rounded,
                                    size: 45,
                                    color: Colors.white70,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Hero(
                    tag: widget.character.image,
                    child: AnimatedAlign(
                      duration: duration,
                      curve: Curves.easeOut,
                      alignment: imageAlignment,
                      child: Image.asset(
                        widget.character.image,
                        scale: widget.character.imageScale,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
