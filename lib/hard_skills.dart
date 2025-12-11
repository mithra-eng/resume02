import 'package:flutter/material.dart';
import './global.dart';

class HardSkillsSection extends StatelessWidget {
  final List<Widget> children;
  const HardSkillsSection({super.key, required this.children});
  @override
  Widget build(BuildContext context) {
    return Section(
      title: "Hard Skills",
      icon: Icons.build,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

class HardSkillsItem extends StatelessWidget {
  final List<String> hSkills;
  const HardSkillsItem({super.key, this.hSkills = const []});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...hSkills.map(
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
