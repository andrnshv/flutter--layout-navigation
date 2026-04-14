import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      /* soal 3: Padding di sepanjang setiap tepinya sebesar 32 piksel */
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          /* soal 1: Column di dalam Expanded */
          Expanded(
            child: Column(
              /* soal 1: crossAxisAlignment ke start */
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2: Teks pertama di dalam Container dengan padding bawah 8 */
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                /* soal 2: Teks lokasi dengan warna abu-abu */
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /* soal 3: Ikon bintang warna merah dan teks "41" */
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Andrian Sheva A.F. - 244107060062',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        /* Ganti body 'Hello World' dengan variabel titleSection di dalam Column */
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
}