import 'package:flutter/material.dart';
import 'package:jogo_da_velha/menu/menu.dart';
import 'package:jogo_da_velha/page3x3/page3x3.dart';
import 'package:jogo_da_velha/page4x4/page4x4.dart';
import 'package:jogo_da_velha/routes/app_routes.dart';

void main() {
  runApp(const AppConfig());
}

class AppConfig extends StatelessWidget {
  const AppConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 252, 213, 154),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        RoutePaths.menu.value: (context) => const Menu(),
        RoutePaths.tabuleiro3x3.value: (context) => const Tabuleiro3x3(),
        RoutePaths.tabuleiro4x4.value: (context) => const Tabuleiro4x4(),
      },
    );
  }
}