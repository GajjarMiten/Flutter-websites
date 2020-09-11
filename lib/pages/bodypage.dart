import 'package:flutter/material.dart';
import 'package:pokedex/model/character.dart';
import 'package:pokedex/view_model/characterCard.dart';

class BodyPage extends StatefulWidget {
  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: allCharacters.length,
      itemBuilder: (_, index) => CharacterCard(
        character: allCharacters[index],
      ),
    );
  }
}
