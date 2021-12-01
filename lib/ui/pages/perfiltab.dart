import 'package:flutter/material.dart';
import 'package:newsoozeapp/ui/pages/main.dart';

class Perfil extends StatelessWidget {
  @override
  Widget imagPerfil() {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      alignment: Alignment.centerLeft,
      height: 80,
      width: 80,
      color: Colors.redAccent,
    );
  }

  Widget perfilUsu() {
    return Container(
        child: Text(
      'Usuario:' '  ' 'Ciudad:',
      style: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),
    ));
  }

  Widget perfilUsuUno() {
    return Container(
        child: Text(
      'País:',
      style: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),
    ));
  }

  Widget perfilUsuDos() {
    return Container(
        child: Text(
      'Email:' '  ' 'Ajustes',
      style: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),
    ));
  }

  Widget publicar() {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      alignment: Alignment.centerRight,
      height: 30,
      width: 350,
      decoration: myBoxDecoration(),
      child: Text(
        'Publicar',
        style: TextStyle(
          fontSize: 30,
          color: Colors.black,
        ),
      ),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(),
    );
  }

  Widget espacioUsuario() {
    return Container(
      margin: EdgeInsets.all(14),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(14),
      child: Text(
          'Usuario feed de prueba feed de prueba feed de prueba feed de prueba'),
    );
  }

  Widget espacioUsuariouno() {
    return Container(
      margin: EdgeInsets.all(14),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(14),
      child: Text(
          'Usuario feed de prueba feed de prueba feed de prueba feed de prueba'),
    );
  }

  Widget espacioUsuariodos() {
    return Container(
      margin: EdgeInsets.all(14),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(14),
      child: Text(
          'Usuario feed de prueba feed de prueba feed de prueba feed de prueba'),
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
                imagPerfil(),
                perfilUsu(),
                perfilUsuUno(),
                perfilUsuDos(),
                publicar(),
                espacioUsuario(),
                espacioUsuariouno(),
                espacioUsuariodos()
              ],
            ),
          )),
    );
  }
}
