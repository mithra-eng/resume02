import 'package:flutter/material.dart';
import './global.dart';

class Languages extends StatelessWidget {
  final List<Widget> children;
  const Languages({super.key, required this.children});
  @override
  Widget build(BuildContext context) {
    return Section(
      title: "Languages",
      icon: Icons.build,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

class LanguagesItem extends StatelessWidget {
  final List<String> lans;
  const LanguagesItem({super.key, this.lans = const []});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...lans.map(
            (skill) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                skill,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
