import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "About App",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.qr_code_scanner,
                          size: 100, color: Colors.blue.shade900)),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "QR Code Scanner App",
                        style: TextStyle(
                            color: Colors.blue.shade900, fontSize: 16),
                      )),
                  const Text(
                    "Aplikasi Scan QR Code ini adalah solusi yang cepat, efisien dan mudah digunakan untuk membaca dan mengolah informasi dari QR Code. Dengan antarmuka yang sederhana, aplikasi ini memungkinkan pengguna untuk dengan cepat memindai dan mendapatkan data yang tersembunyi dalam kode QR.",
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "Adapun aplikasi ini masih dalam tahap pengembangan, jadi mohon maklumi segala kekurangannya.",
                    textAlign: TextAlign.center,
                  )
                ],
              )
            ],
          )),
          const Text(
            "Version 1.0.0",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
