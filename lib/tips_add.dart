import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import './makanan_sehat.dart';

class AddTips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddTipsState();
  }
}

class AddTipsState extends State<AddTips> {
  final insertFormKey = GlobalKey<FormState>();
  TextEditingController titleTaskController = TextEditingController();
  TextEditingController descTaskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1DBAB5),
        title: Text("Tambah Tips"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: insertFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nama Tips",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty || value.trim().length == 0) {
                    return "Kolom tidak boleh kosong";
                  }
                  return null;
                },
                controller: titleTaskController,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ketikkan Nama Makanan di sini...",
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Keterangan",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: descTaskController,
                validator: (value) {
                  if (value.isEmpty || value.trim().length == 0) {
                    return "Kolom tidak boleh kosong";
                  }
                  return null;
                },
                style: TextStyle(
                  color: Colors.black,
                ),
                maxLines: 4,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ketikkan Keterangan di sini...",
                ),
              ),
              SizedBox(
                height: 24,
              ),
              FlatButton(
                minWidth: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 12, bottom: 12),
                color: Color(0xff1DBAB5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "SIMPAN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                onPressed: () async {
                  if (insertFormKey.currentState.validate()) {
                    progressDialog(context).show();
                    DocumentReference result = await Firestore.instance
                        .collection('tips')
                        .add(<String, dynamic>{
                      'nama_tips': titleTaskController.text.toString(),
                      'keterangan': descTaskController.text.toString(),
                    });
                    if (result.documentID != null) {
                      progressDialog(context).hide();
                      successAlert("Berhasil", "Data telah tersimpan", context);
                    } else {
                      progressDialog(context).hide();
                      errorAlert("Gagal", "Data tidak tersimpan", context);
                    }
                  } else {
                    errorAlert("Gagal", "Tolong isikan semua kolom", context);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
