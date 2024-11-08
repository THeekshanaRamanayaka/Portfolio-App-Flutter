import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfessionalProfilePage(),
    );
  }
}
class ProfessionalProfilePage extends StatelessWidget {
  const ProfessionalProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Light background color
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              _buildHeader(),

              const SizedBox(height: 24.0),

              // About Section
              _buildAboutSection(),

              const SizedBox(height: 24.0),

              // Skills Section
              _buildSkillsSection(),

              const SizedBox(height: 24.0),

              // Education Section
              _buildEducationSection(),

              const Expanded(child: SizedBox()),

              // Contact Section
              _buildContactSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 40.0,
          backgroundImage: AssetImage('assets/profile.jpg'),
        ),
        const SizedBox(width: 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Theekshana Sankalpa',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4.0),

            Text(
              'Full-stack developer & Flutter developer',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 4.0),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 16.0,
                  color: Colors.grey[600],
                ),
                const SizedBox(width: 4.0),
                Text(
                  'Southern Province, Sri Lanka',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAboutSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'About',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          'Experienced Full-stack developer with a passion for building innovative and user-friendly applications. Skilled in modern web and mobile development technologies.',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          'Current Role: Associate Software Engineer at Acme Inc.',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  Widget _buildSkillsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Skills',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: [
            _buildSkillChip('Java', 4.0),
            _buildSkillChip('OOP', 4.0),
            _buildSkillChip('HTML', 4.5),
            _buildSkillChip('CSS', 4.0),
            _buildSkillChip('JavaScript', 4.5),
            _buildSkillChip('SQL', 4.5),
            _buildSkillChip('GitHub', 4.0),
            _buildSkillChip('Angular', 4.5),
            _buildSkillChip('Spring boot', 4.5),
            _buildSkillChip('Tailwind css', 4.0),
            _buildSkillChip('Flutter', 4.5),
            _buildSkillChip('Dart', 4.0),
            _buildSkillChip('AWS', 3.5),
          ],
        ),
      ],
    );
  }

  Widget _buildSkillChip(String skill, double proficiency) {
    return Chip(
      labelPadding: const EdgeInsets.all(4.0),
      label: Text(
        skill,
        style: const TextStyle(
          fontSize: 14.0,
          color: Colors.white,
        ),
      ),
      backgroundColor: _getSkillColor(proficiency),
    );
  }

  Color _getSkillColor(double proficiency) {
    if (proficiency >= 4.0) {
      return Colors.green[600] ?? Colors.green;
    } else if (proficiency >= 3.5) {
      return Colors.yellow[600] ?? Colors.yellow;
    } else {
      return Colors.red[600] ?? Colors.red;
    }
  }

  Widget _buildEducationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Education',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        ListTile(
          leading: Icon(
            Icons.school,
            color: Colors.grey[600],
          ),
          title: const Text(
            'Diploma in Software Engineering',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            'Institute of computer engineering Technology, Sri Lanka\n2024',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[600],
            ),
          ),
        ),
        const SizedBox(height: 6.0),
        ListTile(
          leading: Icon(
            Icons.school,
            color: Colors.grey[600],
          ),
          title: const Text(
            'Bachelor of Information Technology (External)',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            'University of Moratuwa, Sri Lanka \n2028',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[600],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContactSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.email,
          color: Colors.grey[600],
        ),
        const SizedBox(width: 2.0),
        Text(
          'sankalpa@gmail.com',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(width: 16.0),
        Icon(
          Icons.phone,
          color: Colors.grey[600],
        ),
        const SizedBox(width: 2.0),
        Text(
          '+1 (123) 456-7890',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}