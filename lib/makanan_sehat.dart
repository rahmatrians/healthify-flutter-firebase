import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './makanan_add.dart';
import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MakananList extends StatefulWidget {
  @override
  _MakananListState createState() => _MakananListState();
}

class _MakananListState extends State<MakananList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: new AppBar(
        backgroundColor: Color(0xff1DBAB5),
        title: Text("Makanan Sehat"),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection('makanan').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.blue,
              ),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data.documents.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key(snapshot.data.documents[index].documentID),
                background: Container(
                  color: Colors.red,
                ),
                onDismissed: (direction) async {
                  Firestore.instance
                      .collection('makanan')
                      .document(snapshot.data.documents[index].documentID)
                      .delete();
                },
                child: Column(children: [
                  SizedBox(height: 10),
                  Container(
                    padding:
                        EdgeInsets.only(top: 3, bottom: 3, left: 12, right: 12),
                    child: new GestureDetector(
                      // onTap: () => Navigator.of(context).push(
                      //     new MaterialPageRoute(
                      //         builder: (BuildContext context) =>
                      //             new MakananDetail())),
                      child: new Card(
                        child: Container(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: new ListTile(
                            title: new Text(
                              snapshot.data.documents[index]['nama_makanan'],
                              style: TextStyle(
                                  color: Color(0xff1DBAB5),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            leading: new Icon(Icons.local_dining),
                            subtitle: Container(
                                padding: EdgeInsets.only(top: 15),
                                child: new Text(snapshot.data.documents[index]
                                    ['keterangan'])),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff1DBAB5),
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddMakanan(),
            )),
      ),
    );
  }
}

ProgressDialog progressDialog(BuildContext ctx) {
  ProgressDialog loadingDialog = ProgressDialog(
    ctx,
    type: ProgressDialogType.Normal,
    isDismissible: false,
  );
  loadingDialog.style(
    message: "Loading",
    progressWidget: Container(
      padding: EdgeInsets.all(8.0),
      child: CircularProgressIndicator(
        backgroundColor: Colors.blue,
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 10.0,
    insetAnimCurve: Curves.easeInOut,
    messageTextStyle: TextStyle(
      color: Colors.blue,
    ),
  );
  return loadingDialog;
}

successAlert(String title, String subtitle, BuildContext ctx) {
  return Alert(
    context: ctx,
    title: title,
    desc: subtitle,
    type: AlertType.success,
    buttons: [
      DialogButton(
        onPressed: () {
          Navigator.pop(ctx);
        },
        child: Text(
          "Ok",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    ],
    style: AlertStyle(
      animationType: AnimationType.grow,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      descStyle: TextStyle(fontWeight: FontWeight.bold),
      descTextAlign: TextAlign.center,
      animationDuration: Duration(milliseconds: 400),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Colors.grey,
        ),
      ),
      titleStyle: TextStyle(
        color: Colors.blue,
      ),
      alertAlignment: Alignment.center,
    ),
  ).show();
}

errorAlert(String title, String subtitle, BuildContext ctx) {
  return Alert(
    context: ctx,
    title: title,
    desc: subtitle,
    type: AlertType.warning,
    buttons: [
      DialogButton(
        onPressed: () => Navigator.pop(ctx),
        child: Text(
          "OK",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    ],
    style: AlertStyle(
      animationType: AnimationType.grow,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      descStyle: TextStyle(fontWeight: FontWeight.bold),
      descTextAlign: TextAlign.center,
      animationDuration: Duration(milliseconds: 400),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Colors.grey,
        ),
      ),
      titleStyle: TextStyle(
        color: Colors.red,
      ),
      alertAlignment: Alignment.center,
    ),
  ).show();
}
