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
  @override
  Widget build(BuildContext context) {
    return Center(
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
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: widget.character.background,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.character.name,
                      style: headeings,
                    ),
                    Text(
                      widget.character.showName,
                      style: subHeadeings,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: widget.character.imageAlignment,
              child: Image.asset(
                widget.character.image,
                scale:widget.character.imageScale,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
