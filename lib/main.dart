import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:untitled/feature/presentation/common/theme.dart';
import 'generated/l10n.dart';
import 'route_generator.dart';

void main() {
  runApp(AdaptiveTheme(
    initial: AdaptiveThemeMode.light,
    light: lightTheme,
    dark: darkTheme,
    builder: (light,dark) => MaterialApp(
      theme: light,
      darkTheme: dark,
      onGenerateRoute: RouteGenerator.generateRoute,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    ),
  ));
}
