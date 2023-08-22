import 'package:flutter/material.dart';
// import 'package:store_app/models/product.dart';

import 'package:store_app/constants.dart';
import 'package:store_app/screens/home_screen.dart';
/// The `// ignore: depend_on_referenced_packages` comment is used to suppress the warning that is
/// generated when a package is imported but not used in the code. In this case, the
/// `flutter_localizations` package is imported but not used directly in the code. By adding this
/// comment, the warning for unused imports from referenced packages is ignored.
// ignore: depend_on_referenced_packages
import "package:flutter_localizations/flutter_localizations.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Almarai',
        primaryColor: kPrimaryColor,
        hintColor: kPrimaryColor,
      ),
      // Arabic RTL
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale("ar", "AE")],
      locale: const Locale("ar", "AE"),
      home: const HomeScreen(),
    );
  }
}