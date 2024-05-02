import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whistle_mobile/screens/onboarding/onboarding.dart';
import 'package:whistle_mobile/services/state/appstate.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppState()..initialize(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Onboarding(),
    );
  }
}
