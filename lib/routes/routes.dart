import 'package:get/get.dart';
import 'package:newsoozeapp/ui/pages/loginPage.dart';
import 'package:newsoozeapp/ui/pages/home.dart';
import 'package:newsoozeapp/ui/pages/test.dart';
import 'package:newsoozeapp/ui/pages/ajustes.dart';
import 'package:newsoozeapp/ui/pages/error.dart';
import 'package:newsoozeapp/ui/pages/tabs/feedtab.dart';
import 'package:newsoozeapp/ui/pages/main.dart';
import 'package:newsoozeapp/ui/pages/tabs/notificacionestab.dart';
import 'package:newsoozeapp/ui/pages/tabs/perfiltab.dart';
import 'package:newsoozeapp/ui/pages/registro.dart';
import 'package:newsoozeapp/ui/pages/tabs/usuariostab.dart';

routes() => [
      GetPage(name: "/feed", page: () => feed()),
      GetPage(name: "/ajustes", page: () => Ajustes()),
      GetPage(name: "/error", page: () => error()),
      GetPage(name: "/feed2", page: () => Feed()),
      GetPage(name: "/main", page: () => MainApp()),
      GetPage(name: "/login", page: () => LoginPage()),
      GetPage(name: "/notificaciones", page: () => Notificaciones()),
      GetPage(name: "/perfil", page: () => Perfil()),
      GetPage(name: "/registro", page: () => Registro()),
      GetPage(name: "/test", page: () => Test()),
      GetPage(name: "/usuarios", page: () => Usuarios()),
    ];
