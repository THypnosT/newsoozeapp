import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsoozeapp/routes/routes.dart';
import 'package:flutter_signin_button/button_builder.dart';

void main() => runApp(Test());

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Newsooze",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Newsooze"),
        ),
        body: cuerpo(context));
  }

  Widget cuerpo(context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://png.pngtree.com/thumb_back/fw800/background/20210429/pngtree-manuscript-effect-vintage-paper-image_676909.jpg"),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            botonajust(context),
            botonerror(context),
            botonfeed(context),
            botonfeed2(context),
            botonlogin(context),
            botonmain(context),
            botonnotifi(context),
            botonperfil(context),
            botonregistro(context),
            botonusuarios(context),
          ],
        ),
      ),
    );
  }
}

Widget botonajust(context) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 1),
      child: RaisedButton(
        child: Text('Ajustes'),
        color: Colors.redAccent,
        onPressed: () => Get.toNamed("/ajustes"),
      ));
}

Widget botonerror(context) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 1),
      child: RaisedButton(
        child: Text('Error'),
        color: Colors.redAccent,
        onPressed: () => Get.toNamed("/error"),
      ));
}

Widget botonfeed(context) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 1),
      child: RaisedButton(
        child: Text('Feed'),
        color: Colors.redAccent,
        onPressed: () => Get.toNamed("/feed"),
      ));
}

Widget botonfeed2(context) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 1),
      child: RaisedButton(
        child: Text('Feed 2'),
        color: Colors.redAccent,
        onPressed: () => Get.toNamed("/feed2"),
      ));
}

Widget botonlogin(context) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 1),
      child: RaisedButton(
        child: Text('Login'),
        color: Colors.redAccent,
        onPressed: () => Get.toNamed("/login"),
      ));
}

Widget botonmain(context) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 1),
      child: RaisedButton(
        child: Text('Main'),
        color: Colors.redAccent,
        onPressed: () => Get.toNamed("/main"),
      ));
}

Widget botonnotifi(context) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 1),
      child: RaisedButton(
        child: Text('Notificaciones'),
        color: Colors.redAccent,
        onPressed: () => Get.toNamed("/notificaciones"),
      ));
}

Widget botonperfil(context) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 1),
      child: RaisedButton(
        child: Text('Perfil'),
        color: Colors.redAccent,
        onPressed: () => Get.toNamed("/perfil"),
      ));
}

Widget botonregistro(context) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 1),
      child: RaisedButton(
        child: Text('Registro'),
        color: Colors.redAccent,
        onPressed: () => Get.toNamed("/registro"),
      ));
}

Widget botonusuarios(context) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 1),
      child: RaisedButton(
        child: Text('Usuarios'),
        color: Colors.redAccent,
        onPressed: () => Get.toNamed("/usuarios"),
      ));
}
