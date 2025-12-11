import 'package:flutter/material.dart';
import './global.dart';
import './header.dart';
import './work_experience.dart';
import './workshop.dart';
import './eduction.dart';
import './hard_skills.dart';
import '/soft_skills.dart';
import './languages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final myUser = user2;
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 60 / 100,
              child: Column(
                children: [
                  ProfileHeader(user: myUser),
                  const SizedBox(height: 20),
                  IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WorkExperienceSection(
                                    children: myUser.workExperiences,
                                  ),
                                  WorkshopsSection(children: myUser.workshops),
                                  EducationSection(children: myUser.education),
                                ],
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 1,
                            child: Container(
                              // width: 400,
                              color: const Color.fromARGB(255, 229, 230, 231),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    HardSkillsSection(
                                      children: myUser.hardSkills,
                                    ),
                                    SoftSkillsSection(
                                      children: myUser.softSkills,
                                    ),
                                    Languages(children: myUser.languages),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

User user1 = User(
  firstName: "Ali",
  lastName: "Radmard",
  jobTitle: "Developer",
  summary: "Short profile summary or tagline here...",
  email: "mitra.naderi@gmail.com",
  phone: "09132746737",
  location: "Yazd",
  instagram: "instagram.com/mitra",
  workExperiences: [
    WorkExperienceItem(
      title: "AAA",
      location: "loc",
      from: "2023",
      to: "2024",
      acts: ["AAA", "BBB"],
    ),
    WorkExperienceItem(
      title: "BBB",
      location: "loc",
      from: "2024",
      acts: ["CCC", "DDD"],
    ),
  ],
  workshops: [
    WorkshopsItem(
      title: "HTML CSS course",
      instructor: "Abulfazl Vafadoost",
      date: "2025",
      organizer: "maktabkhooneh",
    ),
    WorkshopsItem(
      title: "Javascript course",
      instructor: "Ehsan Gazar",
      date: "2025",
      organizer: "maktabkhooneh",
    ),
  ],
  education: [
    EducationItem(
      title: "B.Sc. in Computer Science",
      university: "Yazd university",
      city: "Yazd",
    ),
    EducationItem(title: "BBB", university: "Uni", city: "city"),
  ],
  hardSkills: [
    HardSkillsItem(hSkills: ["Flutter", "Git"]),
  ],
  softSkills: [
    SoftSkillsItem(
      sSkills: ["Communication", "Adaptability", "Problem solving"],
    ),
  ],
  languages: [
    LanguagesItem(lans: ["Persian", "English", "French"]),
  ],
);
User user2 = User(
  firstName: "mitra",
  lastName: "naderi",
  jobTitle: "Developer",
  summary: "Short profile summary or tagline here...",
  email: "mitra.naderi@gmail.com",
  phone: "09132746737",
  location: "Yazd",
  instagram: "instagram.com/mitra",
  workExperiences: [
    WorkExperienceItem(
      title: "gameronpic",
      location: "bnd",
      from: "2018",
      to: "2020",
      acts: ["Technical office expert", "BBB"],
    ),
    WorkExperienceItem(
      title: "snapp",
      location: "yzd",
      from: "2021",
      acts: ["Administrative expert", "DDD"],
    ),
  ],
  workshops: [
    WorkshopsItem(
      title: "HTML CSS course",
      instructor: "moosh hamedani",
      date: "2025",
      organizer: "youtube",
    ),
    WorkshopsItem(
      title: "Javascript course",
      instructor: "Ehsan Gazar",
      date: "2025",
      organizer: "sabz lern",
    ),
  ],
  education: [
    EducationItem(
      title: "Mechanical Engineering",
      university: "ustmb",
      city: "babol",
    ),
    EducationItem(title: "BBB", university: "Uni", city: "city"),
  ],
  hardSkills: [
    HardSkillsItem(hSkills: ["Flutter", "Git", "pico8"]),
  ],
  softSkills: [
    SoftSkillsItem(
      sSkills: [
        "Communication",
        "Emotional intelligence",
        " Creativity",
        "Patience",
      ],
    ),
  ],
  languages: [
    LanguagesItem(lans: ["Persian", "English", "spanish"]),
  ],
);
User user3 = User(
  firstName: "mahsa",
  lastName: "Rahavi",
  jobTitle: "Developer",
  summary: "Short profile summary or tagline here...",
  email: "mitra.naderi@gmail.com",
  phone: "09132746737",
  location: "Yazd",
  instagram: "instagram.com/mitra",
  workExperiences: [
    WorkExperienceItem(
      title: "AAA",
      location: "loc",
      from: "2023",
      to: "2024",
      acts: ["AAA", "BBB"],
    ),
    WorkExperienceItem(
      title: "BBB",
      location: "loc",
      from: "2024",
      acts: ["CCC", "DDD"],
    ),
  ],
  workshops: [
    WorkshopsItem(
      title: "HTML CSS course",
      instructor: "Abulfazl Vafadoost",
      date: "2025",
      organizer: "maktabkhooneh",
    ),
    WorkshopsItem(
      title: "Javascript course",
      instructor: "Ehsan Gazar",
      date: "2025",
      organizer: "maktabkhooneh",
    ),
  ],
  education: [
    EducationItem(
      title: "B.Sc. in Computer Science",
      university: "Yazd university",
      city: "Yazd",
    ),
    EducationItem(title: "BBB", university: "Uni", city: "city"),
  ],
  hardSkills: [
    HardSkillsItem(hSkills: ["Flutter", "Git"]),
  ],
  softSkills: [
    SoftSkillsItem(
      sSkills: [
        "Communication",
        "Emotional intelligence",
        " Creativity",
        "Patience",
      ],
    ),
  ],
  languages: [
    LanguagesItem(lans: ["Persian", "English", "spanish"]),
  ],
);
