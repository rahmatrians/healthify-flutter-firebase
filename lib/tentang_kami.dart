import 'package:flutter/material.dart';

class TentangKami extends StatefulWidget {
  @override
  _TentangKamiState createState() => _TentangKamiState();
}

class _TentangKamiState extends State<TentangKami> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Color(0xff1DBAB5),
        title: Text("Tentang Kami"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset(
                "images/profilePict.png",
                height: 70,
              ),
              SizedBox(height: 20),
              Text(
                "Healthify adalah aplikasi untuk membantu anda mempelajari pola hidup sehat. Di dalam Healthify terdapat menu Makanan Sehat, tips Hidup Sehat dan Info Layanan. Mari hidup sehat bersama Healthify",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25),
              Text("Kelompok 7",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 15),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin:
                        EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
                    width: 900,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(children: [
                      SizedBox(height: 10),
                      Text(
                        "Rahmat Riansyah",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text("41519010010"),
                      SizedBox(height: 10),
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin:
                        EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
                    width: 900,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(children: [
                      SizedBox(height: 10),
                      Text(
                        "Ari Satria Wiratama",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text("41519010122"),
                      SizedBox(height: 10),
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin:
                        EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
                    width: 900,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(children: [
                      SizedBox(height: 10),
                      Text(
                        "Abimanyu Dwi Satrio",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text("41519010135"),
                      SizedBox(height: 10),
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
