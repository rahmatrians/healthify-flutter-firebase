import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import './makanan_sehat.dart';

class InsertScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InsertScreenState();
  }
}

class InsertScreenState extends State<InsertScreen> {
  final insertFormKey = GlobalKey<FormState>();
  TextEditingController titleTaskController = TextEditingController();
  TextEditingController descTaskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Task"),
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
                "Nama Makanan",
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
                    return "Task name cannot be empty";
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
                    return "Ketikkan Keterangan di sini..";
                  }
                  return null;
                },
                style: TextStyle(
                  color: Colors.black,
                ),
                maxLines: 4,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Insert Task Description....",
                ),
              ),
              SizedBox(
                height: 24,
              ),
              FlatButton(
                minWidth: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () async {
                  if (insertFormKey.currentState.validate()) {
                    progressDialog(context).show();
                    DocumentReference result = await Firestore.instance
                        .collection('makanan')
                        .add(<String, dynamic>{
                      'nama_makanan': titleTaskController.text.toString(),
                      'keterangan': descTaskController.text.toString(),
                    });
                    if (result.documentID != null) {
                      progressDialog(context).hide();
                      successAlert("Success", "Success Insert Task", context);
                    } else {
                      progressDialog(context).hide();
                      errorAlert("Failed", "Failed to Insert Task", context);
                    }
                  } else {
                    errorAlert("Failed", "Please fill all the fields", context);
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
