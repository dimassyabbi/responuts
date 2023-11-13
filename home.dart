import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Respon 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomePage()), // Navigasi ke HomePage
            );
          },
          child: const Text('tampilkan'),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator'),
        automaticallyImplyLeading: false, // Menghilangkan tombol kembali
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Push Named And Remove Until',
                style: TextStyle(
                  fontWeight: FontWeight.bold, // Mengatur teks menjadi bold
                  fontSize: 18, // Mengatur ukuran font menjadi 18
                )),
            const Text(
                'Method yang digunakan untuk membuka halaman yang dituju dengan nama rute dan menghapus semua rute dikumpulkan sehingga pengguna tidak dapat kembali ke rute sebelumya'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
