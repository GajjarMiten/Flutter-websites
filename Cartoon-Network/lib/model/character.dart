import 'package:flutter/cupertino.dart';

class Character {
  final String name;
  final String showName;
  final String image;
  final double imageScale;
  final Alignment imageAlignment;
  final String description;
  final List<Color> background;
  final double boxHeight;
  final List<String> clips;

  const Character({
    this.name,
    this.showName,
    this.image,
    this.imageScale,
    this.imageAlignment,
    this.description,
    this.background,
    this.boxHeight,
    this.clips,
  });
}

const Character dexter = Character(
    name: "Dexter",
    showName: "Dexter's Laboratory",
    image: "assets/dexter.png",
    imageScale: 1.8,
    imageAlignment: Alignment(0, -1.3),
    description:
        "Dexter's Laboratoryis an American animated television series created by Genndy Tartakovsky for Cartoon Network. It follows Dexter, a boy-genius and inventor with a hidden laboratory in his room,which he keeps secret from his parents. He is in a constant battle with his older sister Dee Dee, who always finds a way to get inside Dexter's lab and inadvertently foil his experiments. Dexter also engages in a bitter rivalry with a fellow boy-genius named Mandark, who is Dexter's neighbor and classmate.",
    background: [
      Color(0xffF2994A),
      Color(0xffF2C94C),
    ],
    boxHeight: 180,
    clips: [
      'd1.jpg',
      'd2.jpg',
      'd3.jpg',
      'd4.png',
      'd5.jpg',
    ]);

const Character blossom = Character(
  name: "Blossom",
  showName: "Powerpuff Girls",
  image: "assets/blossom.png",
  imageScale: 6.2,
  imageAlignment: Alignment(-0.2, -2),
  description:
      "Blossom has long, fiery red-orange, waist-length hair with a triangular part and bangs and pink eyes. She wears a pink dress that has a black stripe in the middle with white tights and black Mary Janes. She has a red bow on the top of her head and a heart-shaped hair-clip that can be seen from behind. ",
  background: [
    Color(0xfffe8c00),
    Color(0xfff83600),
  ],
  boxHeight: 150,
  clips: [
    'p1.png',
    'p2.jpg',
  ],
);

const Character gumball = Character(
  name: "Gumball",
  showName: "The Amazing World of Gumball",
  image: "assets/gumball.png",
  imageScale: 2.6,
  imageAlignment: Alignment(0.5, -1.8),
  description:
      "Gumball (formerly Zach) Tristopher Watterson is the protagonist of The Amazing World of Gumball. He is a twelve-year-old, blue male cat that goes to Elmore Junior High, with his adopted brother Darwin and his four-year-old sister Anais. Gumball is in Miss Simian's class. As of \"The Shell,\" Gumball is dating Penny.\n"
      "Originally, Gumball was meant to be a blue dog. Not much thought was put into this choice as it was more of a placeholder than a final design.",
  background: [
    Color(0xff00c6ff),
    Color(0xff0072ff),
  ],
  boxHeight: 210,
  clips: [
    'g1.png',
    'g2.png',
    'g3.jpg',
  ],
);

const Character grim = Character(
  name: "Grim",
  showName: "Adventures of Billy & Mandy",
  image: "assets/grim.png",
  imageScale: 8,
  imageAlignment: Alignment(0, -2),
  description:
      "The Grim Adventures of Billy & Mandy (also known as Billy & Mandy) is an American animated television series created by Maxwell Atoms for Cartoon Network, and is the 14th of the network's Cartoon Cartoons (albeit on when it was part of Grim & Evil).",
  background: [
    Color(0xffe43a15),
    Color(0xffe65245),
  ],
  boxHeight: 180,
  clips: [
    'b1.jpeg',
    'b2.jpeg',
    'b3.jpeg',
  ],
);

const Character johny = Character(
  name: "Johny",
  showName: "Johnny Bravo",
  image: "assets/johny.png",
  imageScale: 1.5,
  imageAlignment: Alignment(0, -2),
  description:
      "Johnny Bravo is an American animated television series created by Van Partible for Cartoon Network, and the second of the network's Cartoon Cartoons, which aired from July 14, 1997, to August 27, 2004. The series centers on the title character, who is loosely based on Elvis Presley. Johnny Bravo is a sunglasses-wearing, muscular young man who lives with his mother and attempts to get women to date him, though he is usually unsuccessful.",
  background: [
    Color(0xff8E2DE2),
    Color(0xff4A00E0),
  ],
  boxHeight: 200,
  clips: [
    'j2.jpeg',
    'j1.jpeg',
    'j3.jpeg',
  ],
);

const Character bean = Character(
  name: "Mr.Bean",
  showName: "Mr.Bean ",
  image: "assets/mr.bean.png",
  imageScale: 2.3,
  imageAlignment: Alignment(0, -3),
  description:
      "Mr. Bean is a British sitcom created by Rowan Atkinson and Richard Curtis, produced by Tiger Aspect and starring Atkinson as the title character. The sitcom consisted of 15 episodes that were co-written by Atkinson alongside Curtis and Robin Driscoll; for the pilot, it was co-written by Ben Elton.",
  background: [
    Color(0xff6D6027),
    Color(0xffD3CBB8),
  ],
  boxHeight: 210,
  clips: [
    'm1.jpeg',
    'm2.jpeg',
    'm3.jpeg',
    'm4.jpeg',
  ],
);
final List<Character> allCharacters = [
  dexter,
  blossom,
  gumball,
  grim,
  johny,
  bean
];
