import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //The network is too low, lemme just try and push these to github
    //watch! and let's do it 2geda

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text("This is the first screen"),
      ),
    );
  }
}
