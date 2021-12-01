import 'package:flutter/material.dart';
import 'package:newsoozeapp/ui/pages/main.dart';

class Notificaciones extends StatelessWidget {
  @override
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(),
    );
  }

  Widget noti() {
    return Container(
      margin: EdgeInsets.all(16),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      child: Text('Hay 10 usuarios alrededor tuyo, hace 15 minutos.'),
    );
  }

  Widget notiUno() {
    return Container(
      margin: EdgeInsets.all(16),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      child: Text('Usuario 30 publicó algo nuevo'),
    );
  }

  Widget notiDos() {
    return Container(
      margin: EdgeInsets.all(16),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      child: Text('Hay 10 usuarios alrededor tuyo, hace 30 minutos.'),
    );
  }

  Widget notiTres() {
    return Container(
      margin: EdgeInsets.all(16),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      child: Text('Usuario 20 publicó algo nuevo.'),
    );
  }

  Widget notiCuatro() {
    return Container(
      margin: EdgeInsets.all(16),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      child: Text('Hay 10 usuarios alredor tuyo, hace 45 minutos.'),
    );
  }

  Widget notiCinco() {
    return Container(
      margin: EdgeInsets.all(16),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      child: Text('Usuario 10 publicó algo nuevo.'),
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
                noti(),
                notiUno(),
                notiDos(),
                notiTres(),
                notiCuatro(),
                notiCinco(),
              ],
            ),
          )),
    );
  }
}
