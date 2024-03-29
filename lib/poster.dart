import 'package:flutter/material.dart';

class Poster extends StatelessWidget {
  static const POSTER_RATIO = 0.7;

  final double height;
  final String posterUrl;

  const Poster({
    this.height = 100.0,
    this.posterUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(4),
      child: Image.asset(
        posterUrl,
        height: height,
        width: height * POSTER_RATIO,
        fit: BoxFit.cover,
      ),
    );
  }
}
