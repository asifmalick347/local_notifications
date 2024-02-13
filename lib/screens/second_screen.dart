import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
   const SecondScreen({Key? key, required this.payload}) : super(key: key);
  final String payload;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        centerTitle: true,
      ),
      body:  SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Payload: $payload"),
          ],
        ),
      ),
    );
  }
}
