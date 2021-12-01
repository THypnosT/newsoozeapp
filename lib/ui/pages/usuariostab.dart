import 'package:flutter/material.dart';
import 'package:newsoozeapp/ui/pages/main.dart';

class Usuarios extends StatelessWidget {
  @override
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(),
    );
  }

  Card miCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.all(3),
      color: Colors.transparent,
      elevation: 2,
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(6, 4, 8, 0),
            title: Text('Usuario'),
            subtitle: Text('País, Ciudad'),
            leading: Icon(
              Icons.image,
              color: Colors.redAccent,
              size: 80,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () => {}, child: Text('Mensaje')),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://png.pngtree.com/thumb_back/fw800/background/20210429/pngtree-manuscript-effect-vintage-paper-image_676909.jpg"),
                  fit: BoxFit.cover)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                miCard(),
                miCard(),
                miCard(),
              ],
            ),
          )),
    );
  }
}
