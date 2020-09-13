import 'package:flutter/material.dart';
import 'package:pokedex/provider/scrollProvider.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartoon Network',
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => ScrollProvider())],
        child: HomePage(),
      ),
    );
  }
}
