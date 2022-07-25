import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:untitled/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';


final Uri _url = Uri.parse('https://flutter.dev');


class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: ElevatedButton(
          onPressed: _launchUrl,
          child: Text(S
              .of(context)
              .app_bar, style: TextStyle(color: Theme.of(context).primaryColor),),
        ),
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}