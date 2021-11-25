import 'package:flutter/material.dart';
import 'package:newsoozeapp/pagina_contenido/ajustes.dart';
import 'package:newsoozeapp/pagina_contenido/error.dart';
import 'package:newsoozeapp/pagina_contenido/feed.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            nombre(),
            createEmailInput(),
            createPasswordInput(),
            loginButton(context),
            renderCreateAccountLink(),
            registro(),
          ],
        ),
      ),
    );
  }
}

Widget nombre() {
  return Text(
    'Iniciar Sesion',
    style: TextStyle(
        color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
  );
}

Widget createEmailInput() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Correo Electronico',
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget createPasswordInput() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Clave',
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget loginButton(context) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      child: RaisedButton(
        child: Text('Login'),
        color: Colors.redAccent,
        onPressed: () {
          //FUNCION BOTON LOGIN
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => feed()),
          );
        },
      ));
}

Widget renderCreateAccountLink() {
  return Container(
      padding: EdgeInsets.only(top: 100),
      child: Text(
        '¿Nuevo en la página?',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ));
}

Widget registro() {
  return Container(
      padding: EdgeInsets.only(top: 10),
      child: Text(
        'Registrarse',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ));
}
