import 'package:flutter/material.dart';
import 'package:pokedex/model/character.dart';
import 'package:pokedex/provider/scrollProvider.dart';
import 'package:pokedex/view_model/characterCard.dart';
import 'package:provider/provider.dart';

class BodyPage extends StatefulWidget {
  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    final scrollController = Provider.of<ScrollProvider>(context);
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      controller: scrollController.controller,
      scrollDirection: Axis.horizontal,
      itemCount: allCharacters.length,
      itemBuilder: (_, index) => CharacterCard(
        character: allCharacters[index],
      ),
    );
  }
}
