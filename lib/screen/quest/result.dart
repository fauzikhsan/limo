import 'package:flutter/material.dart';
import 'package:zetproject/screen/home/bottom.dart';
import 'package:zetproject/screen/quest/quest.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xffffffff,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15,
              top: 55,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Apa yang terjadi jika kamu investasi di saham UNVR, MNCN, dan TLKM 5 Tahun kedepan ?",
                  maxLines: 3,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            "images/chart.jpg",
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Total Return",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "372, 8 %",
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: "Poppins",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Return 25 Okt 2021 - 25 Okt 2026",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            height: 150,
            width: 380,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(
                10,
              ),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 1,
                  offset: Offset(1, 2),
                  blurRadius: 1,
                  color: Colors.grey[200]!,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Container(
              height: 45,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8,
                ),
                color: Color(
                  0xff058c42,
                ),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Quest(),
                      ),
                    );
                  },
                  child: Text(
                    'Lanjut Isi Data',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(displayname: ""),
                ),
              );
            },
            child: Text(
              "Lewati",
              style: TextStyle(
                color: Color(
                  0xff058c42,
                ),
                fontSize: 14,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
