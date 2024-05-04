import 'package:flutter/material.dart';
import 'package:jogo_da_velha/routes/app_routes.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff854800),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        title: const Text("Jogo da velha"),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsetsDirectional.only(top: 100),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsetsDirectional.only(bottom: 50),
              child: const Text(
                "Qual modo deseja jogar?",
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
            Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffa2600d),
              ),
              margin: const EdgeInsetsDirectional.only(top: 20),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutePaths.tabuleiro3x3.value);
                },
                child: const Text(
                  'Modo 3x3',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffa2600d),
              ),
              margin: const EdgeInsetsDirectional.only(top: 20),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutePaths.tabuleiro4x4.value);
                },
                child: const Text(
                  'Modo 4x4',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
