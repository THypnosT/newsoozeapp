import 'package:flutter/material.dart';
import 'package:newsoozeapp/ui/pages/main.dart';

class Ajustes extends StatelessWidget {
  @override
  Widget nombreSitio() {
    return Text(
      'Newsooze',
      style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
    );
  }

  Widget ajustar() {
    return Container(
      child: Text(
        'Ajustes',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
      ),
    );
  }

  Widget ediInfo() {
    return Container(
      child: Text(
        'Editar informacion de usuario',
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
      ),
    );
  }

  Widget ediInfoUno() {
    return Text(
      'Cambiar contraseña',
      textAlign: TextAlign.left,
      style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
    );
  }

  Widget ediInfoDos() {
    return Text(
      'Modo noche',
      textAlign: TextAlign.left,
      style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
    );
  }

  Widget ediInfoTres() {
    return Text(
      'cerrar sesión',
      textAlign: TextAlign.justify,
      style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
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
                nombreSitio(),
                ajustar(),
                ediInfo(),
                ediInfoUno(),
                ediInfoDos(),
                ediInfoTres()
              ],
            ),
          )),
    );
  }
}
