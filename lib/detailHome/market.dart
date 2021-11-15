import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        leading: Icon(
          CupertinoIcons.arrow_turn_up_left,
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          "Market",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Poppins",
            fontSize: 17,
          ),
        ),
      ),
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 14, right: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Indeks Harga Saham Gabungan",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "IHSG",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Last close ',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' 6.09',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "-20,23 (1,24%)",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/c/cb/IDX_Channel.png",
                    scale: 3,
                  ),
                ],
              ),
            ),
            Image.asset(
              "images/chart.jpg",
              scale: 1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "6.092",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '-20,23',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' (1,24%)',
                            style: TextStyle(
                              color: Colors.greenAccent,
                              fontFamily: "Poppins",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Last Close",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ListTile(
              title: Text(
                "Data IHSG",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: Text(
                "Detail harga",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Poppins",
                  fontSize: 11,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.doc_on_clipboard,
                color: Color(
                  0xff058c42,
                ),
              ),
              title: Text(
                "Open",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
              trailing: Text(
                "6.019",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.hexagon_fill,
                color: Color(
                  0xff058c42,
                ),
              ),
              title: Text(
                "High",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
              trailing: Text(
                "6.019",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.burst,
                color: Color(
                  0xff058c42,
                ),
              ),
              title: Text(
                "Low",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
              trailing: Text(
                "6.019",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.pencil_outline,
                color: Color(
                  0xff058c42,
                ),
              ),
              title: Text(
                "Close",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
              trailing: Text(
                "6.019",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15,
                top: 10,
              ),
              child: Row(
                children: [
                  Text(
                    "Running Trade",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15,
                top: 10,
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 65,
                        margin: EdgeInsets.only(
                          bottom: 20,
                          left: 0,
                          right: 0,
                        ),
                        width: MediaQuery.of(context).size.width / 1,
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey[100]!,
                            spreadRadius: 0.8,
                            blurRadius: 0.7,
                            offset: Offset(1, 1),
                          ),
                        ]),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                      ),
                                      fit: BoxFit.contain),
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border(
                                    top: BorderSide(
                                      width: 1.0,
                                      color: Color(0xff134074),
                                    ),
                                    left: BorderSide(
                                      width: 1.0,
                                      color: Color(0xff134074),
                                    ),
                                    right: BorderSide(
                                      width: 1.0,
                                      color: Color(0xff134074),
                                    ),
                                    bottom: BorderSide(
                                      width: 1.0,
                                      color: Color(0xff134074),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 7.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "BBCA",
                                          style: TextStyle(
                                              color: Color(0xff134074),
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        // syariah(
                                        //   data[i]['syariah'],
                                        // ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 230,
                                          child: Text(
                                            "Bank Central Asia",
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 8),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "30850",
                                style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "+ 8,00 (3.04%)",
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.end,
                              //   children: [
                              //     Text(
                              //       "Volume :  ",
                              //       style: TextStyle(
                              //         color: Colors.black,
                              //         fontFamily: "Poppins",
                              //         fontSize: 11,
                              //         fontWeight: FontWeight.w400,
                              //       ),
                              //     ),
                              //     Text(
                              //       "Txt",
                              //       style: TextStyle(
                              //         color: Colors.black,
                              //         fontFamily: "Poppins",
                              //         fontSize: 13,
                              //         fontWeight: FontWeight.w500,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 65,
                        margin: EdgeInsets.only(
                          bottom: 20,
                          left: 0,
                          right: 0,
                        ),
                        width: MediaQuery.of(context).size.width / 1,
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey[100]!,
                            spreadRadius: 0.8,
                            blurRadius: 0.7,
                            offset: Offset(1, 1),
                          ),
                        ]),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                      ),
                                      fit: BoxFit.contain),
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border(
                                    top: BorderSide(
                                      width: 1.0,
                                      color: Color(0xff134074),
                                    ),
                                    left: BorderSide(
                                      width: 1.0,
                                      color: Color(0xff134074),
                                    ),
                                    right: BorderSide(
                                      width: 1.0,
                                      color: Color(0xff134074),
                                    ),
                                    bottom: BorderSide(
                                      width: 1.0,
                                      color: Color(0xff134074),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 7.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "BBCA",
                                          style: TextStyle(
                                              color: Color(0xff134074),
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        // syariah(
                                        //   data[i]['syariah'],
                                        // ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 230,
                                          child: Text(
                                            "Bank Central Asia",
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 8),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "30850",
                                style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "+ 8,00 (3.04%)",
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.end,
                              //   children: [
                              //     Text(
                              //       "Volume :  ",
                              //       style: TextStyle(
                              //         color: Colors.black,
                              //         fontFamily: "Poppins",
                              //         fontSize: 11,
                              //         fontWeight: FontWeight.w400,
                              //       ),
                              //     ),
                              //     Text(
                              //       "Txt",
                              //       style: TextStyle(
                              //         color: Colors.black,
                              //         fontFamily: "Poppins",
                              //         fontSize: 13,
                              //         fontWeight: FontWeight.w500,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 65,
                        margin: EdgeInsets.only(
                          bottom: 20,
                          left: 0,
                          right: 0,
                        ),
                        width: MediaQuery.of(context).size.width / 1,
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey[100]!,
                            spreadRadius: 0.8,
                            blurRadius: 0.7,
                            offset: Offset(1, 1),
                          ),
                        ]),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                      ),
                                      fit: BoxFit.contain),
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border(
                                    top: BorderSide(
                                      width: 1.0,
                                      color: Color(0xff134074),
                                    ),
                                    left: BorderSide(
                                      width: 1.0,
                                      color: Color(0xff134074),
                                    ),
                                    right: BorderSide(
                                      width: 1.0,
                                      color: Color(0xff134074),
                                    ),
                                    bottom: BorderSide(
                                      width: 1.0,
                                      color: Color(0xff134074),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 7.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "BBCA",
                                          style: TextStyle(
                                              color: Color(0xff134074),
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        // syariah(
                                        //   data[i]['syariah'],
                                        // ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 230,
                                          child: Text(
                                            "Bank Central Asia",
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 8),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "30850",
                                style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "+ 8,00 (3.04%)",
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.end,
                              //   children: [
                              //     Text(
                              //       "Volume :  ",
                              //       style: TextStyle(
                              //         color: Colors.black,
                              //         fontFamily: "Poppins",
                              //         fontSize: 11,
                              //         fontWeight: FontWeight.w400,
                              //       ),
                              //     ),
                              //     Text(
                              //       "Txt",
                              //       style: TextStyle(
                              //         color: Colors.black,
                              //         fontFamily: "Poppins",
                              //         fontSize: 13,
                              //         fontWeight: FontWeight.w500,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
