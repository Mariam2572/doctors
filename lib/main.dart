import 'package:flutter/material.dart';

void main() {
  runApp(const Doctors());
}

class Doctors extends StatelessWidget {
  const Doctors({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     debugShowCheckedModeBanner: false ,
    );
  }
}

