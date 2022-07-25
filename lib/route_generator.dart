import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'feature/presentation/pages/home_page.dart';
import 'feature/presentation/pages/error_page.dart';
import 'generated/l10n.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(dynamic settings) {
    return MaterialPageRoute(builder: (context) {
      switch (settings.name) {
        case HomePage.routeName:
          return  HomePage();
        default:
          return ErrorPage();
      }
    });
  }
}
