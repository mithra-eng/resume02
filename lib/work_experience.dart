import 'package:flutter/material.dart';
import './styled_text.dart';
import './global.dart';

class WorkExperienceSection extends StatelessWidget {
  final List<Widget> children;
  const WorkExperienceSection({super.key, required this.children});
  @override
  Widget build(BuildContext context) {
    return Section(
      title: "Work Experience",
      icon: Icons.work,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

class WorkExperienceItem extends StatelessWidget {
  final String title;
  final String location;
  final String from;
  final String to;
  final List<String> acts;
  const WorkExperienceItem({super.key, required this.title, required this.location, required this.from, this.to = "present", this.acts = const []});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionItemTitle(title: title),
          Explanation(text: location),
          Date(from: from,  to:to),
          Ul(children: acts)
        ],
      )
    );
  }
}