import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Keuangan extends StatefulWidget {
  const Keuangan({Key? key}) : super(key: key);

  @override
  _KeuanganState createState() => _KeuanganState();
}

class _KeuanganState extends State<Keuangan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(
          0xffffffff,
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.arrow_uturn_left,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Keuangan",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
      backgroundColor: Colors.grey[50],
    );
  }
}
