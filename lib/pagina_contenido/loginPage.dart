import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Widget nombre() {
    return Text(
      'Iniciar Sesion',
      style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
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

  Widget loginButton() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
        child: RaisedButton(
          child: Text('Login'),
          color: Colors.redAccent,
          onPressed: () {},
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(color: Colors.amberAccent),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              nombre(),
              createEmailInput(),
              createPasswordInput(),
              loginButton(),
              renderCreateAccountLink(),
              registro(),
            ],
          )),
    );
  }
}
