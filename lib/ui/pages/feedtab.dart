import 'package:flutter/material.dart';
import 'package:newsoozeapp/ui/pages/main.dart';

class Feed extends StatelessWidget {
  Widget buscar() {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      alignment: Alignment.centerLeft,
      height: 30,
      width: 200,
      decoration: myBoxDecoration(),
      child: Text(
        '',
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(),
    );
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

  Widget espacioUsuario() {
    return Container(
      margin: EdgeInsets.all(24),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      child: Text(
          'Usuario feed de prueba feed de prueba feed de prueba feed de prueba'),
    );
  }

  Widget espacioUsuariouno() {
    return Container(
      margin: EdgeInsets.all(24),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      child: Text(
          'Usuario feed de prueba feed de prueba feed de prueba feed de prueba'),
    );
  }

  Widget espacioUsuariodos() {
    return Container(
      margin: EdgeInsets.all(24),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      child: Text(
          'Usuario feed de prueba feed de prueba feed de prueba feed de prueba'),
    );
  }

  Widget espacioUsuariotres() {
    return Container(
      margin: EdgeInsets.all(24),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
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
                publicar(),
                espacioUsuario(),
                espacioUsuariouno(),
                espacioUsuariodos(),
                espacioUsuariotres()
              ],
            ),
          )),
    );
  }
}
