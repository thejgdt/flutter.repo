import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: const Text(
          "My Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, color: Colors.white, size: 70),
              ),
            ),
            const SizedBox(height: 15.0),
            buildContainer(Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textFormat(
                    label: "Nama          ",
                    value: "Jagaddhita Jalu Garinarka"),
                const SizedBox(height: 10),
                textFormat(label: "No. HP        ", value: "083865003476"),
                const SizedBox(height: 10),
                textFormat(
                    label: "Email           ", value: "theaberchio@gmail.com"),
                const SizedBox(height: 10),
                textFormat(
                    label: "Alamat        ", value: "Kaliwungu, Kab. Semarang"),
                const SizedBox(height: 10),
                textFormat(
                    label: "Cita-cita      ", value: "Membahagiakan Orang Tua")
              ],
            )),
            const SizedBox(height: 25),
            buildContainer(Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Riwayat Pendidikan",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const SizedBox(height: 10),
                educationBox(
                    jenjang: "Sekolah Dasar",
                    instansi: "SD N Kaliwungu 2",
                    tahun: "Tahun 2012 - 2018"),
                const Divider(),
                educationBox(
                    jenjang: "Sekolah Menengah Pertama",
                    instansi: "SMP N 1 Tengaran",
                    tahun: "Tahun 2019 - 2021"),
                const Divider(),
                educationBox(
                    jenjang: "Sekolah Menengah Kejuruan",
                    instansi: "SMK N 2 Surakarta",
                    tahun: "Tahun 2022 - 2025"),
                const Divider()
              ],
            ))
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
    );
  }

  Container buildContainer(Widget child) {
    return Container(
      width: 500,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }

  Widget educationBox(
      {required String jenjang, required String instansi, required tahun}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          jenjang,
          style: TextStyle(color: Colors.grey.shade700),
        ),
        const SizedBox(height: 10),
        Text(
          instansi,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 0),
        Text(
          "$tahun",
          style: TextStyle(color: Colors.grey.shade500),
        ),
      ],
    );
  }

  Widget textFormat({required String label, required String value}) {
    return Row(children: [
      Text(
        "$label  :",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      const SizedBox(width: 8.0),
      Expanded(child: Text(value, style: const TextStyle(color: Colors.black)))
    ]);
  }
}
