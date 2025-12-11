import 'package:flutter/material.dart';
import './styled_text.dart';
import './global.dart';

class EducationSection extends StatelessWidget {
  final List<Widget> children;
  const EducationSection({super.key, required this.children});
  @override
  Widget build(BuildContext context) {
    return Section(
      title: "Education",
      icon: Icons.school,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String title;
  final String university;
  final String city;
  const EducationItem({super.key, required this.title, required this.university, required this.city});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionItemTitle(title: title),
          Explanation(text: university),
          BlueText(text: city),
        ]
      )
    );
  }
}