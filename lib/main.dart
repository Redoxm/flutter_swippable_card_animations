import 'package:flutter/material.dart';
import 'package:flutter_swippable_card_animations/presentation/routes/generated_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter swipable animations',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator().generateRoute,
    );
  }
}
