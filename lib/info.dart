import 'package:flutter/material.dart';

class infoLayanan extends StatefulWidget {
  @override
  _infoLayananState createState() => _infoLayananState();
}

class _infoLayananState extends State<infoLayanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Color(0xff1DBAB5),
        title: Text("Info Layanan"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
        width: 900,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(children: [
          SizedBox(height: 10),
          Text("Nomor Ambulance"),
          SizedBox(height: 5),
          Text(
            "0813-1882-1786",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 30),
          Text("Instagram Kemenkes"),
          SizedBox(height: 5),
          Text(
            "@kemenkes_ri",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 30),
          Text("No Telepon SATGAS COVID-19"),
          SizedBox(height: 5),
          Text(
            "119",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 30),
          Text("Rumah Sakit Kabupaten Tangerang"),
          SizedBox(height: 5),
          Text(
            "Jl. Jend. Ahmad Yani No.9, RT.001/RW.003, Sukaasih, Kec. Tangerang, Kota Tangerang, Banten 15111",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 30),
          Text("Rumah Sakit Kota Tangerang"),
          SizedBox(height: 5),
          Text(
            "Jl. Masjid Al-Hidayah, RT.005/RW.003, Klp. Indah, Kec. Tangerang, Kota Tangerang, Banten 15117",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ]),
      ),
    );
  }
}
