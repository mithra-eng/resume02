import 'package:flutter/material.dart';
import './global.dart';

class ProfileHeader extends StatelessWidget {
  final User user;

  const ProfileHeader({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    const Color darkBlue = Color(0xFF1F334B);
    const Color tealStrip = Color(0xFF2F7C73);
    const double avatarRadius = 48;

    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 18),

                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${user.firstName} ${user.lastName}",
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 1.5),
                            Text(
                              user.jobTitle,
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 47, 124, 115),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 12),

                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.fromLTRB(140, 22, 24, 22),
                        decoration: const BoxDecoration(
                          color: darkBlue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(14),
                            topRight: Radius.circular(14),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user.summary,
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Additional subtitle text here",
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 20,
                        ),
                        color: tealStrip,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _contactIcon(Icons.email, user.email),
                            _contactIcon(Icons.phone, user.phone),
                            _contactIcon(Icons.location_on, user.location),
                            _contactIcon(Icons.person, user.instagram),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //avatar
              Positioned(
                left: 44,
                top: 40,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 4),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: avatarRadius,
                    backgroundImage: AssetImage('assets/images/PROF.jpg'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _contactIcon(IconData icon, String? text) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Colors.white),
        const SizedBox(width: 6),
        Text(
          text ?? 'No Email',
          style: const TextStyle(color: Colors.white, fontSize: 13),
        ),
      ],
    );
  }
}
