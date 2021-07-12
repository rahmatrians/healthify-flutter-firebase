import 'package:flutter/material.dart';

class infoLayanan extends StatefulWidget {
  @override
  _infoLayananState createState() => _infoLayananState();
}

class _infoLayananState extends State<infoLayanan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Color(0xff1DBAB5),
            title: Text("Info Layanan"),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Rumah Sakit",
                ),
                Tab(
                  text: "Nomor Darurat",
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            ListView(children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
                width: 900,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(children: [
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
                  SizedBox(height: 30),
                  Text("Rumah Sakit Tangerang Selatan"),
                  SizedBox(height: 5),
                  Text(
                    "Rumah Indonesia Sehat,Jalan Lengkong Gudang Timur Nomor 777, Serpong, Tangerang Selatan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 30),
                  Text("Rumah Sakit Jakarta Kota"),
                  SizedBox(height: 5),
                  Text(
                    "Jl. Jend. Sudirman No.Kav 49, RT.5/RW.4, Karet Semanggi, Kecamatan Setiabudi, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12930",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 30),
                  Text("Rumah Sakit Jakarta Selatan"),
                  SizedBox(height: 5),
                  Text(
                    "Jl. Jend. Basuki Rachmat No.31, RT.3/RW.2, Pd. Bambu, Kec. Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13420",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 30),
                  Text("Rumah Sakit Jakarta Utara"),
                  SizedBox(height: 5),
                  Text(
                    "Jalan Sungai Bambu Raya No.5, RT.4/RW.9, Tanjung Priok, RT.5/RW.9, RT.5/RW.9, Sungai Bambu, Tj. Priok, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14320",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ]),
              ),
            ]),
            Container(
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
                Text("Website Covid-19 Indonesia"),
                SizedBox(height: 5),
                Text(
                  "https://covid19.go.id/",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 30),
                Text("No Telepon SATGAS COVID-19"),
                SizedBox(height: 5),
                Text(
                  "119",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
