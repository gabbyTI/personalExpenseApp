import 'package:expense_app/pages/home.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitDown,
  //   DeviceOrientation.portraitUp,
  // ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expenses',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        accentColor: Colors.amber[300],
        //Defining a global text style for texts around your app
        textTheme: TextTheme(
          title: const TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          button: const TextStyle(
            // fontFamily: 'OpenSans',
            color: Colors.white,
            fontSize: 16,
            // fontWeight: FontWeight.bold,
          ),
        ),
        //Defining a global text style for texts in the AppBar
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                title: const TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
        fontFamily: 'Quicksand',
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(title: 'Personal Expenses'),
    );
  }
}
