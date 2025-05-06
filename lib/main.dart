import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'pages/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await deleteDatabase(await getDatabasesPath().then((path) => join(path, 'checkout.db')));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      debugShowCheckedModeBanner: false,
      routes: {'/splash': (context) => SplashScreen(),
      },
    );
  }
}
