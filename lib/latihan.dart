import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text with Josefin Sans',
      debugShowCheckedModeBanner: false,
      home: const Home(title: 'Program Studi Rekayasa Perangkat Lunak'),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Section Title: Visi
            const Text(
              'Visi',
              style: TextStyle(
                fontFamily: 'JosefinSans', // Make sure this font is in your pubspec.yaml
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Prodi D4 Rekayasa Perangkat Lunak yang telah ditetapkan oleh Direktur Politeknik Negeri Bengkalis melalui surat keputusan No. 2061/PL31/TU/2016 adalah "Menjadi Program Studi vokasi yang menghasilkan lulusan bidang rekayasa perangkat lunak berstandar Nasional dan menuju reputasi Internasional pada tahun 2020."',
              style: TextStyle(
                fontFamily: 'JosefinSans',
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),

            // Section Title: Misi
            const Text(
              'Misi',
              style: TextStyle(
                fontFamily: 'JosefinSans',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Misi Program Studi Sarjana Terapan Rekayasa Perangkat Lunak adalah:',
              style: TextStyle(
                fontFamily: 'JosefinSans',
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            // Misi List
            const Text(
              '1. Menyelenggarakan pendidikan dan meningkatkan kemampuan mahasiswa dalam mengembangkan Ilmu Pengetahuan dan Teknologi Rekayasa Perangkat Lunak bidang Rekayasa web dan Aplikasi mobile untuk meningkatkan daya saing yang tinggi.',
              style: TextStyle(
                fontFamily: 'JosefinSans',
                fontSize: 16,
              ),
            ),
            const Text(
              '2. Menciptakan, mengembangkan, dan menerapkan ilmu pengetahuan dan teknologi untuk menghasilkan produk dan unggulan rekayasa perangkat lunak.',
              style: TextStyle(
                fontFamily: 'JosefinSans',
                fontSize: 16,
              ),
            ),
            const Text(
              '3. Meningkatkan pemanfaatan teknologi informasi dalam mengatasi permasalahan pengembangan industri dan memperkuat hubungan eksternal (industri, pemerintah dan masyarakat umum).',
              style: TextStyle(
                fontFamily: 'JosefinSans',
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
