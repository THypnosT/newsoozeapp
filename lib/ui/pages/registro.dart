import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  Widget registro() {
    return Text(
      'Creación de Usuario',
      style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
    );
  }

  Widget createUsuario() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Usuario',
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }

  Widget createEmailInput() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
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
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Clave',
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }

  Widget confirmarPassword() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Confirmar Clave',
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }

  Widget loginButton() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
        child: RaisedButton(
          child: Text(
            'Registrar',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          color: Colors.redAccent,
          onPressed: () {},
        ));
  }

  Widget renderCreateAccountLink() {
    return Container(
        padding: EdgeInsets.only(top: 100),
        child: Text(
          '¿Ya posees una cuenta?',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ));
  }

  Widget iniciarSesion(context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/login");
        },
        child: Text(
          'Iniciar Sesión',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ));
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
                registro(),
                createUsuario(),
                createEmailInput(),
                createPasswordInput(),
                confirmarPassword(),
                loginButton(),
                renderCreateAccountLink(),
                iniciarSesion(context),
              ],
            ),
          )),
    );
  }
}
