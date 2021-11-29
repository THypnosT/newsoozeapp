import 'package:get/get.dart';
import 'package:newsoozeapp/ui/pages/loginPage.dart';
import 'package:newsoozeapp/ui/pages/feed.dart';

routes() => [
      GetPage(name: "/home", page: () => MyApp()),
      GetPage(name: "/feedpage", page: () => feed()),
    ];
