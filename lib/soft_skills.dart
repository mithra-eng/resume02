import 'package:flutter/material.dart';
import './global.dart';

class SoftSkillsSection extends StatelessWidget {
  final List<Widget> children;
  const SoftSkillsSection({super.key, required this.children});
  @override
  Widget build(BuildContext context) {
    return Section(
      title: "Soft Skills",
      icon: Icons.lightbulb,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

class SoftSkillsItem extends StatelessWidget {
  final List<String> sSkills;
  const SoftSkillsItem({super.key, this.sSkills = const []});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: sSkills
            .map(
              (child) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: BackgroundBox(text: child),
              ),
            )
            .toList(),
      ),
    );
  }
}

class BackgroundBox extends StatelessWidget {
  final String text;
  const BackgroundBox({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 5, right: 8),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 129, 131, 133),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
