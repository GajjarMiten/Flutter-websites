import 'package:flutter/cupertino.dart';

class Character {
  final String name;
  final String showName;
  final String image;
  final String description;
  final List<Color> background;
  final List<String> clips;

  const Character({
    this.name,
    this.showName,
    this.image,
    this.description,
    this.background,
    this.clips,
  });
}

const Character dexter = Character(
    name: "Dexter",
    showName: "Dexter's Laboratory",
    image: "assets/dexter.png",
    description:
        "Dexter's Laboratoryis an American animated television series created by Genndy Tartakovsky for Cartoon Network. It follows Dexter, a boy-genius and inventor with a hidden laboratory in his room,which he keeps secret from his parents. He is in a constant battle with his older sister Dee Dee, who always finds a way to get inside Dexter's lab and inadvertently foil his experiments. Dexter also engages in a bitter rivalry with a fellow boy-genius named Mandark, who is Dexter's neighbor and classmate. Prominently featured in the series' first two seasons are segments featuring superhero-based characters Monkey, Dexter's pet lab-monkey, and the Justice Friends, a trio of superheroes who share an apartment.",
    background: [
      Color(0xffF2994A),
      Color(0xffF2C94C),
    ],
    clips: []);

const Character blossom = Character(
  name: "Blossom",
  showName: "Powerpuff Girls",
  image: "assets/blossom.png",
  description:
      "Blossom has long, fiery red-orange, waist-length hair with a triangular part and bangs and pink eyes. She wears a pink dress that has a black stripe in the middle with white tights and black Mary Janes. She has a red bow on the top of her head and a heart-shaped hair-clip that can be seen from behind. "
      "As the smartest member and self-proclaimed leader of the Powerpuff Girls she is often seen as the most mature, level-headed and composed member of the group. She can also be fussy, overbearing, vain and overly analytical at times.",
  background: [
    Color(0xfffe8c00),
    Color(0xfff83600),
  ],
  clips: [],
);

const Character gumball = Character(
  name: "Gumball",
  showName: "The Amazing World of Gumball",
  image: "assets/gumball.png",
  description:
      "Gumball (formerly Zach) Tristopher Watterson is the protagonist of The Amazing World of Gumball. He is a twelve-year-old, blue male cat that goes to Elmore Junior High, with his adopted brother Darwin and his four-year-old sister Anais. Gumball is in Miss Simian's class. As of \"The Shell,\" Gumball is dating Penny.\n"
      "Originally, Gumball was meant to be a blue dog. Not much thought was put into this choice as it was more of a placeholder than a final design. As the creators developed the character further, they decided to make him a black cat, as it fit the personality they had in mind for him: unlucky, but optimistic (black cats symbolize bad luck in European culture). The creators found this trait to be too restricting in terms of possible plots and stories. In addition, a silhouette cat would be \"hard to read\" on the backgrounds planned for the show.",
  background: [
    Color(0xff00c6ff),
    Color(0xff0072ff),
  ],
  clips: [],
);

const Character grim = Character(
  name: "Grim",
  showName: "The Grim Adventures of Billy & Mandy",
  image: "assets/grim.png",
  description:
      "The Grim Adventures of Billy & Mandy (also known as Billy & Mandy) is an American animated television series created by Maxwell Atoms for Cartoon Network, and is the 14th of the network's Cartoon Cartoons (albeit on when it was part of Grim & Evil). It follows two children: Billy, a slow-witted happy-go-lucky boy, and Mandy, his dark and cynical best friend, who, after winning a limbo game to save Billy's pet hamster, gain the mighty Grim Reaper as their best friend in eternal servitude and slavery.",
  background: [
    Color(0xffe43a15),
    Color(0xffe65245),
  ],
  clips: [],
);

final List<Character> allCharacters = [dexter,blossom,gumball,grim];