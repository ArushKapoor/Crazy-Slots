import 'package:crazy_slots/Screens/HomePage.dart';
import 'package:crazy_slots/Utilities/SymbolsList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<SymbolsList>(
          create: (_) => SymbolsList(),
        ),
      ],
      child: MaterialApp(
        title: 'Crazy Slots',
        debugShowCheckedModeBanner: false,
        routes: {
          HomePage.id: (context) => HomePage(),
        },
        initialRoute: HomePage.id,
      ),
    );
  }
}
