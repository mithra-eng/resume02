import 'package:flutter/material.dart';
import './styled_text.dart';
import './global.dart';

class WorkshopsSection extends StatelessWidget {
  final List<Widget> children;
  const WorkshopsSection({super.key, required this.children});
  @override
  Widget build(BuildContext context) {
    return Section(
      title: "Workshops",
      icon: Icons.computer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      )
    );
  }
}

class WorkshopsItem extends StatelessWidget {
  final String title;
  final String instructor;
  final String date;
  final String organizer;
  const WorkshopsItem({super.key, required this.title, required this.instructor, required this.date, required this.organizer});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionItemTitle(title: title),
          Explanation(text: "instructor: $instructor"),
          BlueText(text: date),
          GrayText(text: "organizer: $organizer"),
        ],
      )
    );
  }
}