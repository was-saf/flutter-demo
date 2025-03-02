import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Hero(
        tag: 'hero1',
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}
