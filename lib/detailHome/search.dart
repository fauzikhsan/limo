import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zetproject/textStyle.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    _controller = new TabController(vsync: this, length: 2);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(
          0xffffffff,
        ),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "Market",
          style: Header1(),
        ),
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: [
            Tab(
              child: Text(
                "Saham",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Nunito",
                  fontSize: 13,
                ),
              ),
            ),
            Tab(
              child: Text(
                "Reksadana",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Nunito",
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffffffff),
      body: TabBarView(
        controller: _controller,
        children: [
          SahamMarket(),
          ReksadanaMarket(),
        ],
      ),
    );
  }
}

class SahamMarket extends StatefulWidget {
  const SahamMarket({Key? key}) : super(key: key);

  @override
  _SahamMarketState createState() => _SahamMarketState();
}

class _SahamMarketState extends State<SahamMarket> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 0.0,
            left: 15,
            right: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 25.0,
                    left: 15,
                  ),
                  child: Text(
                    "BBCA",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                height: 60,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  color: Color(
                    0xffffffff,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[200]!,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(1, 2),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending",
                    style: Parent(),
                  ),
                  Text(
                    "Lihat Semua",
                    style: LihatSemua(),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/tlkm.jpg',
                                ),
                                fit: BoxFit.contain),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300]!,
                                spreadRadius: 0.5,
                                blurRadius: 5,
                                offset: Offset(
                                  1,
                                  2,
                                ),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(
                              80,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "TLKM",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Nunito",
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "+ 6.2 %",
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontFamily: "Nunito",
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/agro.jpg',
                                ),
                                fit: BoxFit.contain),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300]!,
                                spreadRadius: 0.5,
                                blurRadius: 5,
                                offset: Offset(
                                  1,
                                  2,
                                ),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(
                              80,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "AGRO",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Nunito",
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "- 1.2 %",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontFamily: "Nunito",
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/brpt.jpg',
                                ),
                                fit: BoxFit.contain),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300]!,
                                spreadRadius: 0.5,
                                blurRadius: 5,
                                offset: Offset(
                                  1,
                                  2,
                                ),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(
                              80,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "BRPT",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Nunito",
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "+ 2.0 %",
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontFamily: "Nunito",
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Kategori 1",
                    style: Parent(),
                  ),
                  Text(
                    "Lihat Semua",
                    style: LihatSemua(),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
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
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
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
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbri.jpg',
                                  ),
                                  fit: BoxFit.contain),
                              borderRadius: BorderRadius.circular(80),
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
                                      "BBRI",
                                      style: TitleSaham1(),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 230,
                                      child: Text(
                                        "Bank Rakyat Indonesia",
                                        overflow: TextOverflow.ellipsis,
                                        style: SubtitleSaham1(),
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
                            "3760",
                            style: TextStyle(
                                color: Colors.red,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "- 8,00 (3.04%)",
                            style: TextStyle(
                              color: Colors.red,
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
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
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
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                  ),
                                  fit: BoxFit.contain),
                              borderRadius: BorderRadius.circular(80),
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
                                      style: TitleSaham1(),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 230,
                                      child: Text(
                                        "Bank Central Asia",
                                        overflow: TextOverflow.ellipsis,
                                        style: SubtitleSaham1(),
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
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
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
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/acst.jpg',
                                  ),
                                  fit: BoxFit.contain),
                              borderRadius: BorderRadius.circular(80),
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
                                      "ACST",
                                      style: TitleSaham1(),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 230,
                                      child: Text(
                                        "PT Acset Indonusa Tbk.",
                                        overflow: TextOverflow.ellipsis,
                                        style: SubtitleSaham1(),
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
                            "2120",
                            style: TextStyle(
                                color: Colors.greenAccent,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "+ 3,00 (1.04%)",
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
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Kategori 1",
                    style: Parent(),
                  ),
                  Text(
                    "Lihat Semua",
                    style: LihatSemua(),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}

class ReksadanaMarket extends StatefulWidget {
  const ReksadanaMarket({Key? key}) : super(key: key);

  @override
  _ReksadanaMarketState createState() => _ReksadanaMarketState();
}

class _ReksadanaMarketState extends State<ReksadanaMarket> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(
        left: 0,
        right: 0,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15,
            ),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 25.0,
                  left: 15,
                ),
                child: Text(
                  "Fund",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontFamily: "Montserrat",
                  ),
                ),
              ),
              height: 60,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(
                color: Color(
                  0xffffffff,
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200]!,
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(1, 2),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top 3 Reksadana",
                  style: Parent(),
                ),
                Text(
                  "Lihat semua",
                  style: LihatSemua(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cipta Saham Unggul Syariah",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Saham",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "+110,85%",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.greenAccent,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Retrun 3 Tahun",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                ),
                margin: EdgeInsets.only(left: 10, right: 10),
                height: 110,
                width: MediaQuery.of(context).size.width / 3.6,
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(
                      6,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        blurRadius: 4,
                        spreadRadius: 2,
                        offset: Offset(1, 2),
                      ),
                    ]),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "I AM BUMN Balanced Plus",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Saham",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "-0,85%",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.redAccent,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Retrun 3 Tahun",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                ),
                margin: EdgeInsets.only(left: 10, right: 10),
                height: 110,
                width: MediaQuery.of(context).size.width / 3.6,
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(
                      6,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        blurRadius: 4,
                        spreadRadius: 2,
                        offset: Offset(1, 2),
                      ),
                    ]),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Star Equity",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Text(
                        "Saham",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "-22,85%",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.redAccent,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Retrun 3 Tahun",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                ),
                margin: EdgeInsets.only(left: 10, right: 10),
                height: 110,
                width: MediaQuery.of(context).size.width / 3.6,
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(
                      6,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        blurRadius: 1,
                        spreadRadius: 2,
                        offset: Offset(1, 2),
                      ),
                    ]),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Return 3 Tahun",
                  style: Parent(),
                ),
                Text(
                  "Lihat semua",
                  style: LihatSemua(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Stack(
              children: [
                Container(
                  height: 65,
                  margin: EdgeInsets.only(
                    bottom: 10,
                    left: 0,
                    right: 0,
                  ),
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100]!,
                      spreadRadius: 0.8,
                      blurRadius: 0.7,
                      offset: Offset(1, 1),
                    ),
                  ]),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Cipta Saham Unggul Syariah",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 25,
                                    width: 230,
                                    child: Text(
                                      "Lorem Ipsum",
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Return 3 Tahun",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Poppins",
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "+ 11.0 %",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Stack(
              children: [
                Container(
                  height: 65,
                  margin: EdgeInsets.only(
                    bottom: 10,
                    left: 0,
                    right: 0,
                  ),
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100]!,
                      spreadRadius: 0.8,
                      blurRadius: 0.7,
                      offset: Offset(1, 1),
                    ),
                  ]),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Cipta Saham Unggul Syariah",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 25,
                                    width: 230,
                                    child: Text(
                                      "Lorem Ipsum",
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Return 3 Tahun",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Poppins",
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "+ 11.0 %",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Stack(
              children: [
                Container(
                  height: 65,
                  margin: EdgeInsets.only(
                    bottom: 10,
                    left: 0,
                    right: 0,
                  ),
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey[100]!,
                      spreadRadius: 0.8,
                      blurRadius: 0.7,
                      offset: Offset(1, 1),
                    ),
                  ]),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Cipta Saham Unggul Syariah",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 25,
                                    width: 230,
                                    child: Text(
                                      "Lorem Ipsum",
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Return 3 Tahun",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Poppins",
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "+ 11.0 %",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
