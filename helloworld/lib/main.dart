import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 206, 238, 253),
      appBar: AppBar(
        title: Text("Halo semua", style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 103, 133, 148),
      ),
      body: Center(child: Image(image: AssetImage("images/lapis.png"))),
    )
    ),
  );
}
