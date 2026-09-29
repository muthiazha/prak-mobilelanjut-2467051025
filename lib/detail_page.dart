import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Menangkap Route Arguments
    final args = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail / Video Player'),
        backgroundColor: const Color(0xFFE1E5FF),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.play_circle_fill,
              size: 100,
              color: Color(0xFF4D63D9),
            ),
            const SizedBox(height: 20),
            Text(
              args ?? 'Ini adalah halaman Video',
              style: const TextStyle(fontSize: 18, fontFamily: 'Poppins'),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            // Menggunakan Navigator.pop untuk kembali
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman sebelumnya
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
