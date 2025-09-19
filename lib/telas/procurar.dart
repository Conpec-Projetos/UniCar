import 'package:flutter/material.dart';

class Procurar extends StatelessWidget {
  const Procurar({super.key});

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
                "De volta às origens",
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
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(child: 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('Partida'),
                        ),),
                        SizedBox(height: 16,),
                        TextFormField(
                        decoration: InputDecoration(
                          label: Text('Chegada'),
                        ),),
                        SizedBox(height: 32,),
                        InputDatePickerFormField(firstDate: DateTime.now(), lastDate: DateTime.parse('20251001')),
                        SizedBox(height: 32,),
                        ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),),
                          child: Text('Procurar', style: TextStyle(color: Colors.white, fontSize: 18),),),
                      //DatePickerDialog(firstDate: DateTime.now(), lastDate: DateTime.parse('20251001')),
                    ],
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}