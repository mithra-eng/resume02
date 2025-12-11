import 'package:flutter/material.dart';
import './styled_text.dart';

class User {
  String firstName;
  String lastName;
  String jobTitle;
  String summary;
  String? email;
  String phone;
  String location;
  String instagram;
  List<Widget> workExperiences = [];
  List<Widget> workshops = [];
  List<Widget> education = [];
  List<Widget> hardSkills = [];
  List<Widget> softSkills = [];
  List<Widget> languages = [];

  User({
    required this.firstName,
    required this.lastName,
    this.jobTitle = "",
    this.summary = "",
    this.email = "",
    this.phone = "",
    this.location = "",
    this.instagram = "",
    required this.workExperiences,
    required this.workshops,
    required this.education,
    required this.hardSkills,
    required this.softSkills,
    required this.languages,
  });
}

class Section extends StatelessWidget {
  final Widget child;
  final IconData icon;
  final String title;
  const Section({
    super.key,
    required this.title,
    required this.icon,
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircularIcon(icon: icon),
              SectionTitle(title: title),
            ],
          ),
          Container(child: child),
        ],
      ),
    );
  }
}

class CircularIcon extends StatelessWidget {
  final IconData icon;
  const CircularIcon({super.key, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 80, 80, 80),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(icon, color: Colors.white, size: 16),
    );
  }
}

class Date extends StatelessWidget {
  final String from;
  final String? to;
  const Date({super.key, required this.from, this.to = "present"});
  @override
  Widget build(BuildContext context) {
    return BlueText(text: "$from - $to");
  }
}

class Ul extends StatelessWidget {
  final List<String> children;
  const Ul({super.key, required this.children});
  @override
  Widget build(BuildContext context) {
    return Column(children: children.map((child) => Li(text: child)).toList());
  }
}

class Li extends StatelessWidget {
  final String text;
  const Li({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 8, right: 8),
          child: Icon(
            Icons.circle,
            size: 8,
            color: Color.fromARGB(255, 50, 120, 120),
          ),
        ),
        Expanded(child: Text(text, style: TextStyle(fontSize: 15))),
      ],
    );
  }
}
