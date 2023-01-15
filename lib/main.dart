import 'package:flutter/material.dart';
import 'package:initial_flutter_app/config/app_router.dart';
import 'config/theme.dart';
import 'screens/screens.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Okey Shop',
      theme: theme(),
      initialRoute: HomeScreen.routeName,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
    
  }
}

