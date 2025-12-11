import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold
      ),
    );
  }
}

class SectionItemTitle extends StatelessWidget {
  final String title;
  const SectionItemTitle({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600
      ),
    );
  }
}

class Explanation extends StatelessWidget {
  final String text;
  const Explanation({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500
      ),
    );
  }
}

class GrayText extends StatelessWidget {
  final String text;
  const GrayText({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        color: Color.fromARGB(255, 140, 140, 140)
      ),
    );
  }
}

class BlueText extends StatelessWidget {
  final String text;
  const BlueText({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        color: Colors.blue[400],
        fontSize: 14,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}