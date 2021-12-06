import 'package:flutter/material.dart';
import 'package:newsoozeapp/ui/pages/tabs/notificacionestab.dart';
import 'package:newsoozeapp/ui/pages/tabs/perfiltab.dart';
import 'package:newsoozeapp/ui/pages/tabs/usuariostab.dart';
import 'package:newsoozeapp/ui/pages/loginPage.dart';
import 'registro.dart';
import 'package:newsoozeapp/ui/pages/tabs/feedtab.dart';
import 'package:newsoozeapp/ui/pages/error.dart';
import 'package:newsoozeapp/ui/pages/ajustes.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/login': (context) => LoginPage(),
      '/registro': (context) => Registro(),
      '/feed': (context) => Feed(),
      '/usuarios': (context) => Usuarios(),
      '/notificaciones': (context) => Notificaciones(),
      '/perfil': (context) => Perfil(),
      '/error': (context) => error(),
      '/ajustes': (context) => Ajustes(),
    },
    initialRoute: '/ajustes',
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' ',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
