import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class Filestorepage extends StatefulWidget {
  const Filestorepage({super.key});

  @override
  State<Filestorepage> createState() => _FilestorepageState();
}

class _FilestorepageState extends State<Filestorepage> {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  List<Map<String, dynamic>> pdfdata = [];
  Future<String> uploadpdf(String filename, File file) async {
    final reference =
        FirebaseStorage.instance.ref().child("pdfs/$filename.pdf");
    final uploadtask = reference.putFile(file);
    await uploadtask.whenComplete(() {});
    final downloadlink = await reference.getDownloadURL();
    return downloadlink;
  }

  void pickfile() async {
    final pickedfile = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (pickedfile != null) {
      String filename = pickedfile.files[0].name;
      File file = File(pickedfile.files[0].path!);
      final downloadlink = await uploadpdf(filename, file);
      await _firebaseFirestore
          .collection('pdfs')
          .add({"name": filename, "url": downloadlink});
    }
    getallpdf();
  }

  void getallpdf() async {
    final results = await _firebaseFirestore.collection('pdfs').get();

    pdfdata = results.docs.map((e) => e.data()).toList();
    setState(() {
      pdfdata = results.docs.map((e) => e.data()).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    getallpdf();
  }

  Future _refresh() async {
    await Future.delayed(Duration(seconds: 1));
    getallpdf();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdadada),
      body: LiquidPullToRefresh(
        springAnimationDurationInMilliseconds: 500,
        // borderWidth: 5,
        onRefresh: _refresh,
        height: 200,
        animSpeedFactor: 5,
        showChildOpacityTransition: false,
        child: GridView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: pdfdata.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          Fileview(pdfurl: pdfdata[index]['url'])));
                },
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          // width: 20,
                          height: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/pdf.png"),
                                  fit: BoxFit.contain)),
                        ),
                        Text(
                          pdfdata[index]['name'],
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: pickfile,
        child: Icon(Icons.add),
      ),
    );
  }
}

class Fileview extends StatefulWidget {
  final String pdfurl;
  const Fileview({super.key, required this.pdfurl});

  @override
  State<Fileview> createState() => _FileviewState();
}

class _FileviewState extends State<Fileview> {
  PDFDocument? document;

  void initalizepdf() async {
    document = await PDFDocument.fromURL(widget.pdfurl);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    initalizepdf();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: document != null
          ? PDFViewer(document: document!)
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
