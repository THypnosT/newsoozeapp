import 'package:flutter/material.dart';
import 'package:newsoozeapp/main.dart';

class feed extends StatelessWidget {
  const feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Newsooze",
      home: Inicio(),
      theme: ThemeData(),
    );
  }
}

Widget cuerpo_feed() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://png.pngtree.com/thumb_back/fw800/background/20210429/pngtree-manuscript-effect-vintage-paper-image_676909.jpg"),
            fit: BoxFit.cover)),
  );
}
