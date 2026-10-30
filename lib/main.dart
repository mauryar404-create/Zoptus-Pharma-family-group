
import 'package:flutter/material.dart';

void main() {
  runApp(const ZoptusApp());
}

class ZoptusApp extends StatelessWidget {
  const ZoptusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoptus Pharma Family',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF0756A5),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF3F7FC),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0756A5),
        foregroundColor: Colors.white,
        title: const Text(
          'ZOPTUS PHARMA',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome, Medical Representative!',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF12345A),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'ZOPTUS PHARMACEUTICALS PVT. LTD.',
              style: TextStyle(fontSize: 15, color: Colors.blueGrey),
            ),
            const SizedBox(height: 25),
            const Text(
              'Our Medicine Catalogue',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search Medicine...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const MedicineCard(
              icon: Icons.medication,
              title: 'Medicine Catalogue',
              subtitle: 'Explore all company products',
            ),
            const MedicineCard(
              icon: Icons.medical_information,
              title: 'Digital Detailing',
              subtitle: 'Present medicines to doctors',
            ),
            const MedicineCard(
              icon: Icons.image,
              title: 'Product Gallery',
              subtitle: 'View product images and posters',
            ),
            const MedicineCard(
              icon: Icons.offline_pin,
              title: 'Offline Catalogue',
              subtitle: 'Access saved medicine details',
            ),
          ],
        ),
      ),
    );
  }
}

class MedicineCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const MedicineCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: const Color(0xFFE4F0FF),
          child: Icon(icon, color: const Color(0xFF0756A5)),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 17),
      ),
    );
  }
}
