import 'package:flutter/material.dart';

class Oferecer extends StatelessWidget {
  const Oferecer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fundo.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/logo.png", height: 96),
            SizedBox(height: 25),
            Center(
              child: Text(
                "Qual o percurso?",
                style: TextStyle(color: Colors.white, fontSize: 36),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                width: 50,
                height: 350,
              ),
            ),
          ],
        ),
      ),
    );
  }
}