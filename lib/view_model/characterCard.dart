import 'package:flutter/material.dart';
import 'package:pokedex/model/character.dart';

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
                      color: widget.character.background.last.withOpacity(0.65),
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
                    AnimatedAlign(
                      duration: duration,
                      alignment: textAlignment,
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
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
              AnimatedAlign(
                duration: duration,
                curve: Curves.easeOut,
                alignment: imageAlignment,
                child: Image.asset(
                  widget.character.image,
                  scale: widget.character.imageScale,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
