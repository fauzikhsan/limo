import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:zetproject/screen/subScreen/listBeli.dart';
import 'package:zetproject/services/textStyle.dart';
import 'package:animate_do/animate_do.dart';

class Transaksi extends StatefulWidget {
  const Transaksi({Key? key}) : super(key: key);

  @override
  _TransaksiState createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    _controller = new TabController(vsync: this, length: 5);

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
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _modalBottomSheetMenuBayar(),
        backgroundColor: Color(0xff058c42),
        child: Icon(
          Icons.card_travel,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(
          0xffffffff,
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Riwayat Transaksi",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          unselectedLabelColor: Colors.grey[300],
          unselectedLabelStyle: TextStyle(
            color: Colors.grey,
          ),
          isScrollable: true,
          indicatorWeight: 0.9,
          indicatorColor: Color(0xff058c42),
          tabs: [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.task_alt,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Order List",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontFamily: "Nunito"),
                  ),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.switch_camera_outlined,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Trade List",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontFamily: "Nunito"),
                  ),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.assignment_late_outlined,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Amend",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontFamily: "Nunito"),
                  ),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.play_for_work_outlined,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Withdraw",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontFamily: "Nunito"),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.savings_outlined,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Tab 5",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontFamily: "Nunito"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
          controller: _controller,
        ),
      ),
      body: BounceInDown(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25.0,
              right: 25,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: TabBarView(
                    children: [
                      Container(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: Container(
                                  height: 65,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[200]!,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: Offset(
                                          1,
                                          2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5.0,
                                      right: 5,
                                      top: 4,
                                    ),
                                    child: Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            child: Center(
                                              child: Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    50,
                                                  ),
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                              //   image: DecorationImage(
                                              //     image: NetworkImage(
                                              // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                              //     ),
                                              //   ),
                                              color: Color(0xffffffff),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey[200]!,
                                                  spreadRadius: 1,
                                                  offset: Offset(1, 2),
                                                  blurRadius: 1,
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(
                                                50,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10.0),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text("BBCA",
                                                        style: TitleSaham1()),
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
                                                        overflow: TextOverflow
                                                            .ellipsis,
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
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 15.0,
                                  right: 5,
                                ),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "30850",
                                        style: TextStyle(
                                            color: Color(0xff00aa13),
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "+ 8,00 (3.04%)",
                                        style: TextStyle(
                                          color: Color(0xff00aa13),
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
                            height: 4,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: Container(
                                  height: 65,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[200]!,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: Offset(
                                          1,
                                          2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5.0,
                                      right: 5,
                                      top: 4,
                                    ),
                                    child: Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            child: Center(
                                              child: Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    50,
                                                  ),
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/tlkm.jpg',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                              //   image: DecorationImage(
                                              //     image: NetworkImage(
                                              // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                              //     ),
                                              //   ),
                                              color: Color(0xffffffff),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey[200]!,
                                                  spreadRadius: 1,
                                                  offset: Offset(1, 2),
                                                  blurRadius: 1,
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(
                                                50,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10.0),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text("TLKM",
                                                        style: TitleSaham1()),
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
                                                        "Telekomunikasi Indonesia Persero",
                                                        overflow: TextOverflow
                                                            .ellipsis,
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
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 15.0,
                                  right: 5,
                                ),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "2102",
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "+ 8,00 (3.04%)",
                                        style: TextStyle(
                                          color: Colors.redAccent,
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
                            height: 4,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: Container(
                                  height: 65,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[200]!,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: Offset(
                                          1,
                                          2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5.0,
                                      right: 5,
                                      top: 4,
                                    ),
                                    child: Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            child: Center(
                                              child: Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    50,
                                                  ),
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbri.jpg',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                              //   image: DecorationImage(
                                              //     image: NetworkImage(
                                              // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                              //     ),
                                              //   ),
                                              color: Color(0xffffffff),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey[200]!,
                                                  spreadRadius: 1,
                                                  offset: Offset(1, 2),
                                                  blurRadius: 1,
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(
                                                50,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10.0),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text("BBRI",
                                                        style: TitleSaham1()),
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
                                                        "Bank Rakyat Indonesia",
                                                        overflow: TextOverflow
                                                            .ellipsis,
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
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 15.0,
                                  right: 5,
                                ),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "30850",
                                        style: TextStyle(
                                            color: Color(0xff00aa13),
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "+ 8,00 (3.04%)",
                                        style: TextStyle(
                                          color: Color(0xff00aa13),
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
                            height: 4,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: Container(
                                  height: 65,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[200]!,
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: Offset(
                                          1,
                                          2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5.0,
                                      right: 5,
                                      top: 4,
                                    ),
                                    child: Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            child: Center(
                                              child: Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    50,
                                                  ),
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/wskt.jpg',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                              //   image: DecorationImage(
                                              //     image: NetworkImage(
                                              // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                              //     ),
                                              //   ),
                                              color: Color(0xffffffff),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey[200]!,
                                                  spreadRadius: 1,
                                                  offset: Offset(1, 2),
                                                  blurRadius: 1,
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(
                                                50,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10.0),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text("WSKT",
                                                        style: TitleSaham1()),
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
                                                        "Waskita Indonesia",
                                                        overflow: TextOverflow
                                                            .ellipsis,
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
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 15.0,
                                  right: 5,
                                ),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "30850",
                                        style: TextStyle(
                                            color: Color(0xff00aa13),
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        "+ 8,00 (3.04%)",
                                        style: TextStyle(
                                          color: Color(0xff00aa13),
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
                            height: 15,
                          ),
                        ],
                      )),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Stack(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: Container(
                                    height: 65,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        8,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey[200]!,
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: Offset(
                                            1,
                                            2,
                                          ),
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 5.0,
                                        right: 5,
                                        top: 4,
                                      ),
                                      child: Row(
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              child: Center(
                                                child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      50,
                                                    ),
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                        'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                //   image: DecorationImage(
                                                //     image: NetworkImage(
                                                // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                                //     ),
                                                //   ),
                                                color: Color(0xffffffff),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey[200]!,
                                                    spreadRadius: 1,
                                                    offset: Offset(1, 2),
                                                    blurRadius: 1,
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  50,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10.0),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("BBCA",
                                                          style: TitleSaham1()),
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        height: 25,
                                                        width: 230,
                                                        child: Text(
                                                          "Bank Central Asia",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style:
                                                              SubtitleSaham1(),
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
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 15.0,
                                    right: 12,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
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
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/nodata.png",
                                scale: 7,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  'Tidak ada data untuk saat ini',
                                  style: ProfilData(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text('people 4'),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text('people 5'),
                        ),
                      ),
                    ],
                    controller: _controller,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _modalBottomSheetMenuBayar() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: (builder) {
          return Container(
            height: 430.0,
            color: Colors.transparent, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      10.0,
                    ),
                    topRight: Radius.circular(
                      10.0,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        right: 25,
                        top: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Transaksi",
                                style: TitleSaham1(),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.close,
                                ),
                                color: Colors.black,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Jumlah Orders",
                                style: ProfilTitle(),
                              ),
                              Text(
                                "0",
                                style: ProfilData(),
                              )
                            ],
                          ),
                          Divider(
                            height: 15,
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Jumlah Trades",
                                style: ProfilTitle(),
                              ),
                              Text(
                                "0",
                                style: ProfilData(),
                              )
                            ],
                          ),
                          Divider(
                            height: 15,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Top Stocks",
                                style: TitleSaham1(),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          SizedBox(
                            height: 130,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Center(
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              50,
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                        color: Color(0xffffffff),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey[200]!,
                                            spreadRadius: 1,
                                            offset: Offset(1, 2),
                                            blurRadius: 1,
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(
                                          50,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "BBCA",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          text: "+20",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: "Poppins",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: " (2,2%)",
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: "Poppins",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Center(
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              50,
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/acst.jpg',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                        color: Color(0xffffffff),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey[200]!,
                                            spreadRadius: 1,
                                            offset: Offset(1, 2),
                                            blurRadius: 1,
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(
                                          50,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "ACST",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          text: "+20",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: "Poppins",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: " (2,2%)",
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: "Poppins",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Center(
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              50,
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/wskt.jpg',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                        color: Color(0xffffffff),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey[200]!,
                                            spreadRadius: 1,
                                            offset: Offset(1, 2),
                                            blurRadius: 1,
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(
                                          50,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "WSKT",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          text: "+20",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: "Poppins",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: " (2,2%)",
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: "Poppins",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Center(
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              50,
                                            ),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bksl.jpg',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                        color: Color(0xffffffff),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey[200]!,
                                            spreadRadius: 1,
                                            offset: Offset(1, 2),
                                            blurRadius: 1,
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(
                                          50,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "BKSL",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          text: "+20",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: "Poppins",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: " (2,2%)",
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontFamily: "Poppins",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width / 1,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 25,
                          right: 25,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => _modalBottomSheetMenuBayar(),
                              // Navigator.of(context, rootNavigator: true).push(
                              //   PageTransition(
                              //     type: PageTransitionType.fade,
                              //     child: Jual(),
                              //   ),
                              // );
                              // },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "Jual",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                height: 45,
                                width: MediaQuery.of(context).size.width / 2.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  // color: Color(
                                  //   0xff00aa13,
                                  // ),
                                  border: Border.all(
                                    color: Color(
                                      0xff00aa13,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context, rootNavigator: true).push(
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: ListBeli(),
                                  ),
                                );
                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "Beli",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                height: 45,
                                width: MediaQuery.of(context).size.width / 2.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xff058c42),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          );
        });
  }
}

// class SahamTRX extends StatefulWidget {
//   const SahamTRX({Key? key}) : super(key: key);

//   @override
//   _SahamTRXState createState() => _SahamTRXState();
// }

// class _SahamTRXState extends State<SahamTRX>
//     with SingleTickerProviderStateMixin {
//   late TabController _controller;

//   @override
//   void initState() {
//     _controller = new TabController(vsync: this, length: 5);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.grey[50],
//       child: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(
//             left: 25.0,
//             right: 25,
//           ),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(
//                   // left: 15.0,
//                   // right: 15,
//                   top: 15,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Stack(
//                       children: [
//                         Container(
//                           child: Padding(
//                             padding: const EdgeInsets.only(
//                               left: 20.0,
//                               right: 20,
//                               top: 8,
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Auto Order",
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 16,
//                                     fontFamily: "Poppins",
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 15,
//                                 ),
//                                 Text(
//                                   "Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak.",
//                                   maxLines: 4,
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontFamily: "Nunito",
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           margin: EdgeInsets.only(
//                             right: 3,
//                           ),
//                           height: 120,
//                           width: MediaQuery.of(context).size.width / 2.5,
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               // gradient: LinearGradient(
//                               //   colors: [
//                               //     const Color(0xff16db65),
//                               //     const Color(0xff058c42),
//                               //   ],
//                               //   begin: FractionalOffset.topCenter,
//                               //   end: FractionalOffset.bottomCenter,
//                               // ),
//                               borderRadius: BorderRadius.circular(
//                                 8,
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey[300]!,
//                                   spreadRadius: 1,
//                                   blurRadius: 1,
//                                   offset: Offset(
//                                     1,
//                                     2,
//                                   ),
//                                 ),
//                               ]),
//                         ),
//                         Container(
//                           height: 120,
//                           width: 8,
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [
//                                 const Color(0xff16db65),
//                                 const Color(0xff058c42),
//                               ],
//                               begin: FractionalOffset.topCenter,
//                               end: FractionalOffset.bottomCenter,
//                             ),
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(
//                                 8,
//                               ),
//                               bottomLeft: Radius.circular(
//                                 8,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Stack(
//                       children: [
//                         Container(
//                           child: Padding(
//                             padding: const EdgeInsets.only(
//                               left: 20.0,
//                               right: 20,
//                               top: 8,
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Order",
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 16,
//                                     fontFamily: "Poppins",
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 15,
//                                 ),
//                                 Text(
//                                   "Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak.",
//                                   maxLines: 4,
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontFamily: "Nunito",
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           height: 120,
//                           width: MediaQuery.of(context).size.width / 2.5,
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               // gradient: LinearGradient(
//                               //   colors: [
//                               //     const Color(0xff16db65),
//                               //     const Color(0xff058c42),
//                               //   ],
//                               //   begin: FractionalOffset.topCenter,
//                               //   end: FractionalOffset.bottomCenter,
//                               // ),
//                               borderRadius: BorderRadius.circular(
//                                 8,
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey[300]!,
//                                   spreadRadius: 1,
//                                   blurRadius: 1,
//                                   offset: Offset(
//                                     1,
//                                     2,
//                                   ),
//                                 ),
//                               ]),
//                         ),
//                         Container(
//                           height: 120,
//                           width: 8,
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [
//                                 const Color(0xff16db65),
//                                 const Color(0xff058c42),
//                               ],
//                               begin: FractionalOffset.topCenter,
//                               end: FractionalOffset.bottomCenter,
//                             ),
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(
//                                 8,
//                               ),
//                               bottomLeft: Radius.circular(
//                                 8,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),

//               SizedBox(
//                 height: 25,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Info Akun",
//                     style: Parent(),
//                   ),
//                   // Icon(Icons.ac_unit_sharp,),
//                 ],
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               // ExpansionTile(
//               //   title: Text("ASDAD"),
//               //   expandedAlignment: Alignment.center,
//               //   backgroundColor: Colors.red,
//               //   subtitle: Text("ASDA"),
//               //   children: [
//               //     Text(
//               //       "ASDADA SDAS HAFAJKFAKJF",
//               //       style: TextStyle(
//               //         color: Colors.white,
//               //       ),
//               //     )
//               //   ],
//               // ),
//               SizedBox(
//                 height: 15,
//               ),
//               SizedBox(
//                 height: 180,
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           // margin: EdgeInsets.only(
//                           //   right: 20,
//                           // ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Padding(
//                               padding: const EdgeInsets.only(
//                                 top: 4.0,
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "Cash",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 14,
//                                       fontFamily: "Nunito",
//                                     ),
//                                   ),
//                                   Text(
//                                     "Rp. 1.223.042.000",
//                                     overflow: TextOverflow.ellipsis,
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontFamily: "Nunito",
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 15,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           height: 70,
//                           width: MediaQuery.of(context).size.width / 2.4,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(
//                                 8,
//                               ),
//                               color: Colors.greenAccent,
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey[200]!,
//                                   spreadRadius: 1,
//                                   blurRadius: 3,
//                                   offset: Offset(
//                                     1,
//                                     2,
//                                   ),
//                                 ),
//                               ]),
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(
//                             right: 0,
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Padding(
//                               padding: const EdgeInsets.only(
//                                 top: 4.0,
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "Equity",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 14,
//                                       fontFamily: "Nunito",
//                                     ),
//                                   ),
//                                   Text(
//                                     "Rp. 22.023,322",
//                                     overflow: TextOverflow.ellipsis,
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontFamily: "Nunito",
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 15,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           height: 70,
//                           width: MediaQuery.of(context).size.width / 2.4,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(
//                                 8,
//                               ),
//                               color: Colors.greenAccent,
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey[200]!,
//                                   spreadRadius: 1,
//                                   blurRadius: 3,
//                                   offset: Offset(
//                                     1,
//                                     2,
//                                   ),
//                                 ),
//                               ]),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           // margin: EdgeInsets.only(
//                           //   right: 20,
//                           // ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Padding(
//                               padding: const EdgeInsets.only(
//                                 top: 4.0,
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "Pending Buys",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 14,
//                                       fontFamily: "Nunito",
//                                     ),
//                                   ),
//                                   Text(
//                                     "Rp. 3.042.000",
//                                     overflow: TextOverflow.ellipsis,
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontFamily: "Nunito",
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 15,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           height: 70,
//                           width: MediaQuery.of(context).size.width / 2.4,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(
//                                 8,
//                               ),
//                               color: Colors.greenAccent,
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey[200]!,
//                                   spreadRadius: 1,
//                                   blurRadius: 3,
//                                   offset: Offset(
//                                     1,
//                                     2,
//                                   ),
//                                 ),
//                               ]),
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(
//                             right: 0,
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Padding(
//                               padding: const EdgeInsets.only(
//                                 top: 4.0,
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     "Total Return",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 14,
//                                       fontFamily: "Nunito",
//                                     ),
//                                   ),
//                                   Text(
//                                     "Rp. 2.023,322",
//                                     overflow: TextOverflow.ellipsis,
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontFamily: "Nunito",
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 15,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           height: 70,
//                           width: MediaQuery.of(context).size.width / 2.4,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(
//                                 8,
//                               ),
//                               color: Colors.greenAccent,
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey[200]!,
//                                   spreadRadius: 1,
//                                   blurRadius: 3,
//                                   offset: Offset(
//                                     1,
//                                     2,
//                                   ),
//                                 ),
//                               ]),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Data Transaksi",
//                     style: Parent(),
//                   ),
//                   // Icon(Icons.ac_unit_sharp,),
//                 ],
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               TabBar(
//                 indicatorSize: TabBarIndicatorSize.tab,
//                 unselectedLabelColor: Colors.black,
//                 labelColor: Colors.red,
//                 isScrollable: true,
//                 indicatorPadding: EdgeInsets.only(
//                   left: 30,
//                   right: 30,
//                 ),
//                 indicatorColor: Colors.black,
//                 labelPadding: EdgeInsets.only(
//                   left: 8,
//                 ),
//                 tabs: [
//                   Tab(
//                     child: Container(
//                       height: 30,
//                       width: 80,
//                       child: Center(
//                         child: Text(
//                           "Order List",
//                           style: TextStyle(
//                               fontSize: 13,
//                               color: Colors.black,
//                               fontFamily: "Nunito"),
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(
//                           8,
//                         ),
//                         border: Border.all(
//                           color: Colors.greenAccent,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Tab(
//                     child: Container(
//                       height: 30,
//                       width: 80,
//                       child: Center(
//                         child: Text(
//                           "Trade List",
//                           style: TextStyle(
//                               fontSize: 13,
//                               color: Colors.black,
//                               fontFamily: "Nunito"),
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(
//                           8,
//                         ),
//                         border: Border.all(
//                           color: Colors.greenAccent,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Tab(
//                     child: Container(
//                       height: 30,
//                       width: 80,
//                       child: Center(
//                         child: Text(
//                           "Amend",
//                           style: TextStyle(
//                               fontSize: 13,
//                               color: Colors.black,
//                               fontFamily: "Nunito"),
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(
//                           8,
//                         ),
//                         border: Border.all(
//                           color: Colors.greenAccent,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Tab(
//                     child: Container(
//                       height: 30,
//                       width: 80,
//                       child: Center(
//                         child: Text(
//                           "Withdraw",
//                           style: TextStyle(
//                               fontSize: 13,
//                               color: Colors.black,
//                               fontFamily: "Nunito"),
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(
//                           8,
//                         ),
//                         border: Border.all(
//                           color: Colors.greenAccent,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Tab(
//                     child: Container(
//                       height: 30,
//                       width: 80,
//                       child: Center(
//                         child: Text(
//                           "Tab 5",
//                           style: TextStyle(
//                               fontSize: 13,
//                               color: Colors.black,
//                               fontFamily: "Nunito"),
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(
//                           8,
//                         ),
//                         border: Border.all(
//                           color: Colors.greenAccent,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//                 controller: _controller,
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height / 2.5,
//                 child: TabBarView(
//                   children: [
//                     Container(
//                         child: Column(
//                       children: [
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Stack(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(),
//                               child: Container(
//                                 height: 65,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(
//                                     8,
//                                   ),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.grey[200]!,
//                                       spreadRadius: 1,
//                                       blurRadius: 3,
//                                       offset: Offset(
//                                         1,
//                                         2,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                     left: 5.0,
//                                     right: 5,
//                                     top: 4,
//                                   ),
//                                   child: Row(
//                                     children: [
//                                       Align(
//                                         alignment: Alignment.centerLeft,
//                                         child: Container(
//                                           height: 50,
//                                           width: 50,
//                                           child: Center(
//                                             child: Container(
//                                               height: 40,
//                                               width: 40,
//                                               decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(
//                                                   50,
//                                                 ),
//                                                 image: DecorationImage(
//                                                   image: NetworkImage(
//                                                     'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           decoration: BoxDecoration(
//                                             border: Border.all(
//                                               color: Colors.grey,
//                                             ),
//                                             //   image: DecorationImage(
//                                             //     image: NetworkImage(
//                                             // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
//                                             //     ),
//                                             //   ),
//                                             color: Color(0xffffffff),
//                                             boxShadow: [
//                                               BoxShadow(
//                                                 color: Colors.grey[200]!,
//                                                 spreadRadius: 1,
//                                                 offset: Offset(1, 2),
//                                                 blurRadius: 1,
//                                               )
//                                             ],
//                                             borderRadius: BorderRadius.circular(
//                                               50,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 15,
//                                       ),
//                                       Padding(
//                                         padding:
//                                             const EdgeInsets.only(top: 10.0),
//                                         child: Align(
//                                           alignment: Alignment.center,
//                                           child: Column(
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Row(
//                                                 children: [
//                                                   Text("BBCA",
//                                                       style: TitleSaham1()),
//                                                   SizedBox(
//                                                     width: 8,
//                                                   ),
//                                                   // syariah(
//                                                   //   data[i]['syariah'],
//                                                   // ),
//                                                 ],
//                                               ),
//                                               Column(
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.start,
//                                                 children: [
//                                                   Container(
//                                                     height: 25,
//                                                     width: 230,
//                                                     child: Text(
//                                                       "Bank Central Asia",
//                                                       overflow:
//                                                           TextOverflow.ellipsis,
//                                                       style: SubtitleSaham1(),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                 top: 15.0,
//                                 right: 5,
//                               ),
//                               child: Align(
//                                 alignment: Alignment.centerRight,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text(
//                                       "30850",
//                                       style: TextStyle(
//                                           color: Colors.greenAccent,
//                                           fontFamily: "Poppins",
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 17),
//                                     ),
//                                     SizedBox(width: 15),
//                                     Text(
//                                       "+ 8,00 (3.04%)",
//                                       style: TextStyle(
//                                         color: Colors.greenAccent,
//                                         fontFamily: "Poppins",
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                     ),
//                                     // Row(
//                                     //   mainAxisAlignment: MainAxisAlignment.end,
//                                     //   children: [
//                                     //     Text(
//                                     //       "Volume :  ",
//                                     //       style: TextStyle(
//                                     //         color: Colors.black,
//                                     //         fontFamily: "Poppins",
//                                     //         fontSize: 11,
//                                     //         fontWeight: FontWeight.w400,
//                                     //       ),
//                                     //     ),
//                                     //     Text(
//                                     //       "Txt",
//                                     //       style: TextStyle(
//                                     //         color: Colors.black,
//                                     //         fontFamily: "Poppins",
//                                     //         fontSize: 13,
//                                     //         fontWeight: FontWeight.w500,
//                                     //       ),
//                                     //     ),
//                                     //   ],
//                                     // ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 4,
//                         ),
//                         Stack(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(),
//                               child: Container(
//                                 height: 65,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(
//                                     8,
//                                   ),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.grey[200]!,
//                                       spreadRadius: 1,
//                                       blurRadius: 3,
//                                       offset: Offset(
//                                         1,
//                                         2,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                     left: 5.0,
//                                     right: 5,
//                                     top: 4,
//                                   ),
//                                   child: Row(
//                                     children: [
//                                       Align(
//                                         alignment: Alignment.centerLeft,
//                                         child: Container(
//                                           height: 50,
//                                           width: 50,
//                                           child: Center(
//                                             child: Container(
//                                               height: 40,
//                                               width: 40,
//                                               decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(
//                                                   50,
//                                                 ),
//                                                 image: DecorationImage(
//                                                   image: NetworkImage(
//                                                     'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/tlkm.jpg',
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           decoration: BoxDecoration(
//                                             border: Border.all(
//                                               color: Colors.grey,
//                                             ),
//                                             //   image: DecorationImage(
//                                             //     image: NetworkImage(
//                                             // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
//                                             //     ),
//                                             //   ),
//                                             color: Color(0xffffffff),
//                                             boxShadow: [
//                                               BoxShadow(
//                                                 color: Colors.grey[200]!,
//                                                 spreadRadius: 1,
//                                                 offset: Offset(1, 2),
//                                                 blurRadius: 1,
//                                               )
//                                             ],
//                                             borderRadius: BorderRadius.circular(
//                                               50,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 15,
//                                       ),
//                                       Padding(
//                                         padding:
//                                             const EdgeInsets.only(top: 10.0),
//                                         child: Align(
//                                           alignment: Alignment.center,
//                                           child: Column(
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Row(
//                                                 children: [
//                                                   Text("TLKM",
//                                                       style: TitleSaham1()),
//                                                   SizedBox(
//                                                     width: 8,
//                                                   ),
//                                                   // syariah(
//                                                   //   data[i]['syariah'],
//                                                   // ),
//                                                 ],
//                                               ),
//                                               Column(
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.start,
//                                                 children: [
//                                                   Container(
//                                                     height: 25,
//                                                     width: 230,
//                                                     child: Text(
//                                                       "Telekomunikasi Indonesia Persero",
//                                                       overflow:
//                                                           TextOverflow.ellipsis,
//                                                       style: SubtitleSaham1(),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                 top: 15.0,
//                                 right: 5,
//                               ),
//                               child: Align(
//                                 alignment: Alignment.centerRight,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text(
//                                       "2102",
//                                       style: TextStyle(
//                                           color: Colors.redAccent,
//                                           fontFamily: "Poppins",
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 17),
//                                     ),
//                                     SizedBox(width: 15),
//                                     Text(
//                                       "+ 8,00 (3.04%)",
//                                       style: TextStyle(
//                                         color: Colors.redAccent,
//                                         fontFamily: "Poppins",
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                     ),
//                                     // Row(
//                                     //   mainAxisAlignment: MainAxisAlignment.end,
//                                     //   children: [
//                                     //     Text(
//                                     //       "Volume :  ",
//                                     //       style: TextStyle(
//                                     //         color: Colors.black,
//                                     //         fontFamily: "Poppins",
//                                     //         fontSize: 11,
//                                     //         fontWeight: FontWeight.w400,
//                                     //       ),
//                                     //     ),
//                                     //     Text(
//                                     //       "Txt",
//                                     //       style: TextStyle(
//                                     //         color: Colors.black,
//                                     //         fontFamily: "Poppins",
//                                     //         fontSize: 13,
//                                     //         fontWeight: FontWeight.w500,
//                                     //       ),
//                                     //     ),
//                                     //   ],
//                                     // ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 4,
//                         ),
//                         Stack(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(),
//                               child: Container(
//                                 height: 65,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(
//                                     8,
//                                   ),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.grey[200]!,
//                                       spreadRadius: 1,
//                                       blurRadius: 3,
//                                       offset: Offset(
//                                         1,
//                                         2,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                     left: 5.0,
//                                     right: 5,
//                                     top: 4,
//                                   ),
//                                   child: Row(
//                                     children: [
//                                       Align(
//                                         alignment: Alignment.centerLeft,
//                                         child: Container(
//                                           height: 50,
//                                           width: 50,
//                                           child: Center(
//                                             child: Container(
//                                               height: 40,
//                                               width: 40,
//                                               decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(
//                                                   50,
//                                                 ),
//                                                 image: DecorationImage(
//                                                   image: NetworkImage(
//                                                     'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbri.jpg',
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           decoration: BoxDecoration(
//                                             border: Border.all(
//                                               color: Colors.grey,
//                                             ),
//                                             //   image: DecorationImage(
//                                             //     image: NetworkImage(
//                                             // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
//                                             //     ),
//                                             //   ),
//                                             color: Color(0xffffffff),
//                                             boxShadow: [
//                                               BoxShadow(
//                                                 color: Colors.grey[200]!,
//                                                 spreadRadius: 1,
//                                                 offset: Offset(1, 2),
//                                                 blurRadius: 1,
//                                               )
//                                             ],
//                                             borderRadius: BorderRadius.circular(
//                                               50,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 15,
//                                       ),
//                                       Padding(
//                                         padding:
//                                             const EdgeInsets.only(top: 10.0),
//                                         child: Align(
//                                           alignment: Alignment.center,
//                                           child: Column(
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Row(
//                                                 children: [
//                                                   Text("BBRI",
//                                                       style: TitleSaham1()),
//                                                   SizedBox(
//                                                     width: 8,
//                                                   ),
//                                                   // syariah(
//                                                   //   data[i]['syariah'],
//                                                   // ),
//                                                 ],
//                                               ),
//                                               Column(
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.start,
//                                                 children: [
//                                                   Container(
//                                                     height: 25,
//                                                     width: 230,
//                                                     child: Text(
//                                                       "Bank Rakyat Indonesia",
//                                                       overflow:
//                                                           TextOverflow.ellipsis,
//                                                       style: SubtitleSaham1(),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                 top: 15.0,
//                                 right: 5,
//                               ),
//                               child: Align(
//                                 alignment: Alignment.centerRight,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text(
//                                       "30850",
//                                       style: TextStyle(
//                                           color: Colors.greenAccent,
//                                           fontFamily: "Poppins",
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 17),
//                                     ),
//                                     SizedBox(width: 15),
//                                     Text(
//                                       "+ 8,00 (3.04%)",
//                                       style: TextStyle(
//                                         color: Colors.greenAccent,
//                                         fontFamily: "Poppins",
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                     ),
//                                     // Row(
//                                     //   mainAxisAlignment: MainAxisAlignment.end,
//                                     //   children: [
//                                     //     Text(
//                                     //       "Volume :  ",
//                                     //       style: TextStyle(
//                                     //         color: Colors.black,
//                                     //         fontFamily: "Poppins",
//                                     //         fontSize: 11,
//                                     //         fontWeight: FontWeight.w400,
//                                     //       ),
//                                     //     ),
//                                     //     Text(
//                                     //       "Txt",
//                                     //       style: TextStyle(
//                                     //         color: Colors.black,
//                                     //         fontFamily: "Poppins",
//                                     //         fontSize: 13,
//                                     //         fontWeight: FontWeight.w500,
//                                     //       ),
//                                     //     ),
//                                     //   ],
//                                     // ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 4,
//                         ),
//                         Stack(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(),
//                               child: Container(
//                                 height: 65,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(
//                                     8,
//                                   ),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.grey[200]!,
//                                       spreadRadius: 1,
//                                       blurRadius: 3,
//                                       offset: Offset(
//                                         1,
//                                         2,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                     left: 5.0,
//                                     right: 5,
//                                     top: 4,
//                                   ),
//                                   child: Row(
//                                     children: [
//                                       Align(
//                                         alignment: Alignment.centerLeft,
//                                         child: Container(
//                                           height: 50,
//                                           width: 50,
//                                           child: Center(
//                                             child: Container(
//                                               height: 40,
//                                               width: 40,
//                                               decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(
//                                                   50,
//                                                 ),
//                                                 image: DecorationImage(
//                                                   image: NetworkImage(
//                                                     'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/wskt.jpg',
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           decoration: BoxDecoration(
//                                             border: Border.all(
//                                               color: Colors.grey,
//                                             ),
//                                             //   image: DecorationImage(
//                                             //     image: NetworkImage(
//                                             // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
//                                             //     ),
//                                             //   ),
//                                             color: Color(0xffffffff),
//                                             boxShadow: [
//                                               BoxShadow(
//                                                 color: Colors.grey[200]!,
//                                                 spreadRadius: 1,
//                                                 offset: Offset(1, 2),
//                                                 blurRadius: 1,
//                                               )
//                                             ],
//                                             borderRadius: BorderRadius.circular(
//                                               50,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 15,
//                                       ),
//                                       Padding(
//                                         padding:
//                                             const EdgeInsets.only(top: 10.0),
//                                         child: Align(
//                                           alignment: Alignment.center,
//                                           child: Column(
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Row(
//                                                 children: [
//                                                   Text("WSKT",
//                                                       style: TitleSaham1()),
//                                                   SizedBox(
//                                                     width: 8,
//                                                   ),
//                                                   // syariah(
//                                                   //   data[i]['syariah'],
//                                                   // ),
//                                                 ],
//                                               ),
//                                               Column(
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.start,
//                                                 children: [
//                                                   Container(
//                                                     height: 25,
//                                                     width: 230,
//                                                     child: Text(
//                                                       "Waskita Indonesia",
//                                                       overflow:
//                                                           TextOverflow.ellipsis,
//                                                       style: SubtitleSaham1(),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                 top: 15.0,
//                                 right: 5,
//                               ),
//                               child: Align(
//                                 alignment: Alignment.centerRight,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text(
//                                       "30850",
//                                       style: TextStyle(
//                                           color: Colors.greenAccent,
//                                           fontFamily: "Poppins",
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 17),
//                                     ),
//                                     SizedBox(width: 15),
//                                     Text(
//                                       "+ 8,00 (3.04%)",
//                                       style: TextStyle(
//                                         color: Colors.greenAccent,
//                                         fontFamily: "Poppins",
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                     ),
//                                     // Row(
//                                     //   mainAxisAlignment: MainAxisAlignment.end,
//                                     //   children: [
//                                     //     Text(
//                                     //       "Volume :  ",
//                                     //       style: TextStyle(
//                                     //         color: Colors.black,
//                                     //         fontFamily: "Poppins",
//                                     //         fontSize: 11,
//                                     //         fontWeight: FontWeight.w400,
//                                     //       ),
//                                     //     ),
//                                     //     Text(
//                                     //       "Txt",
//                                     //       style: TextStyle(
//                                     //         color: Colors.black,
//                                     //         fontFamily: "Poppins",
//                                     //         fontSize: 13,
//                                     //         fontWeight: FontWeight.w500,
//                                     //       ),
//                                     //     ),
//                                     //   ],
//                                     // ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                       ],
//                     )),
//                     Container(
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Stack(
//                             children: [
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(left: 8, right: 8),
//                                 child: Container(
//                                   height: 65,
//                                   decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(
//                                       8,
//                                     ),
//                                     boxShadow: [
//                                       BoxShadow(
//                                         color: Colors.grey[200]!,
//                                         spreadRadius: 1,
//                                         blurRadius: 3,
//                                         offset: Offset(
//                                           1,
//                                           2,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(
//                                       left: 5.0,
//                                       right: 5,
//                                       top: 4,
//                                     ),
//                                     child: Row(
//                                       children: [
//                                         Align(
//                                           alignment: Alignment.centerLeft,
//                                           child: Container(
//                                             height: 50,
//                                             width: 50,
//                                             child: Center(
//                                               child: Container(
//                                                 height: 40,
//                                                 width: 40,
//                                                 decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                     50,
//                                                   ),
//                                                   image: DecorationImage(
//                                                     image: NetworkImage(
//                                                       'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                             decoration: BoxDecoration(
//                                               border: Border.all(
//                                                 color: Colors.grey,
//                                               ),
//                                               //   image: DecorationImage(
//                                               //     image: NetworkImage(
//                                               // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
//                                               //     ),
//                                               //   ),
//                                               color: Color(0xffffffff),
//                                               boxShadow: [
//                                                 BoxShadow(
//                                                   color: Colors.grey[200]!,
//                                                   spreadRadius: 1,
//                                                   offset: Offset(1, 2),
//                                                   blurRadius: 1,
//                                                 )
//                                               ],
//                                               borderRadius:
//                                                   BorderRadius.circular(
//                                                 50,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           width: 15,
//                                         ),
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(top: 10.0),
//                                           child: Align(
//                                             alignment: Alignment.center,
//                                             child: Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Row(
//                                                   children: [
//                                                     Text("BBCA",
//                                                         style: TitleSaham1()),
//                                                     SizedBox(
//                                                       width: 8,
//                                                     ),
//                                                     // syariah(
//                                                     //   data[i]['syariah'],
//                                                     // ),
//                                                   ],
//                                                 ),
//                                                 Column(
//                                                   crossAxisAlignment:
//                                                       CrossAxisAlignment.start,
//                                                   children: [
//                                                     Container(
//                                                       height: 25,
//                                                       width: 230,
//                                                       child: Text(
//                                                         "Bank Central Asia",
//                                                         overflow: TextOverflow
//                                                             .ellipsis,
//                                                         style: SubtitleSaham1(),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                   top: 15.0,
//                                   right: 12,
//                                 ),
//                                 child: Align(
//                                   alignment: Alignment.centerRight,
//                                   child: Column(
//                                     crossAxisAlignment: CrossAxisAlignment.end,
//                                     children: [
//                                       Text(
//                                         "30850",
//                                         style: TextStyle(
//                                             color: Colors.greenAccent,
//                                             fontFamily: "Poppins",
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 17),
//                                       ),
//                                       SizedBox(width: 15),
//                                       Text(
//                                         "+ 8,00 (3.04%)",
//                                         style: TextStyle(
//                                           color: Colors.greenAccent,
//                                           fontFamily: "Poppins",
//                                           fontSize: 12,
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 4,
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       child: Center(
//                         child: Text('people 3'),
//                       ),
//                     ),
//                     Container(
//                       child: Center(
//                         child: Text('people 4'),
//                       ),
//                     ),
//                     Container(
//                       child: Center(
//                         child: Text('people 5'),
//                       ),
//                     ),
//                   ],
//                   controller: _controller,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ReksadanaTRX extends StatefulWidget {
//   const ReksadanaTRX({Key? key}) : super(key: key);

//   @override
//   _ReksadanaTRXState createState() => _ReksadanaTRXState();
// }

// class _ReksadanaTRXState extends State<ReksadanaTRX> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color(
//         0xffffffff,
//       ),
//       child: Column(
//         children: [
//           ListTile(
//             title: Text(
//               "Dalam Proses",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontFamily: "Poppins",
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             trailing: Text(
//               "Lihat semua",
//               style: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 12,
//                 fontFamily: "Poppins",
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 8.0, top: 8),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Cipta Saham Unggul Syariah",
//                         maxLines: 2,
//                         style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.black,
//                           fontFamily: "Poppins",
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 8,
//                       ),
//                       Text(
//                         "Saham",
//                         maxLines: 2,
//                         style: TextStyle(
//                           fontSize: 11,
//                           color: Colors.grey,
//                           fontFamily: "Poppins",
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       Text(
//                         "+110,85%",
//                         maxLines: 2,
//                         style: TextStyle(
//                           fontSize: 13,
//                           color: Colors.greenAccent,
//                           fontFamily: "Poppins",
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       Text(
//                         "Retrun 3 Tahun",
//                         maxLines: 2,
//                         style: TextStyle(
//                           fontSize: 10,
//                           color: Colors.grey,
//                           fontFamily: "Poppins",
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 margin: EdgeInsets.only(left: 10, right: 10),
//                 height: 110,
//                 width: MediaQuery.of(context).size.width / 3.6,
//                 decoration: BoxDecoration(
//                     color: Color(0xffffffff),
//                     borderRadius: BorderRadius.circular(
//                       6,
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey[300]!,
//                         blurRadius: 4,
//                         spreadRadius: 2,
//                         offset: Offset(1, 2),
//                       ),
//                     ]),
//               ),
//               Container(
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 8.0, top: 8),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "I AM BUMN Balanced Plus",
//                         maxLines: 2,
//                         style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.black,
//                           fontFamily: "Poppins",
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 8,
//                       ),
//                       Text(
//                         "Saham",
//                         maxLines: 2,
//                         style: TextStyle(
//                           fontSize: 11,
//                           color: Colors.grey,
//                           fontFamily: "Poppins",
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       Text(
//                         "-0,85%",
//                         maxLines: 2,
//                         style: TextStyle(
//                           fontSize: 13,
//                           color: Colors.redAccent,
//                           fontFamily: "Poppins",
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       Text(
//                         "Retrun 3 Tahun",
//                         maxLines: 2,
//                         style: TextStyle(
//                           fontSize: 10,
//                           color: Colors.grey,
//                           fontFamily: "Poppins",
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 margin: EdgeInsets.only(left: 10, right: 10),
//                 height: 110,
//                 width: MediaQuery.of(context).size.width / 3.6,
//                 decoration: BoxDecoration(
//                     color: Color(0xffffffff),
//                     borderRadius: BorderRadius.circular(
//                       6,
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey[300]!,
//                         blurRadius: 4,
//                         spreadRadius: 2,
//                         offset: Offset(1, 2),
//                       ),
//                     ]),
//               ),
//               Container(
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 8.0, top: 8),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Star Equity",
//                         maxLines: 2,
//                         style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.black,
//                           fontFamily: "Poppins",
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 23,
//                       ),
//                       Text(
//                         "Saham",
//                         maxLines: 2,
//                         style: TextStyle(
//                           fontSize: 11,
//                           color: Colors.grey,
//                           fontFamily: "Poppins",
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       Text(
//                         "-22,85%",
//                         maxLines: 2,
//                         style: TextStyle(
//                           fontSize: 13,
//                           color: Colors.redAccent,
//                           fontFamily: "Poppins",
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       Text(
//                         "Retrun 3 Tahun",
//                         maxLines: 2,
//                         style: TextStyle(
//                           fontSize: 10,
//                           color: Colors.grey,
//                           fontFamily: "Poppins",
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 margin: EdgeInsets.only(left: 10, right: 10),
//                 height: 110,
//                 width: MediaQuery.of(context).size.width / 3.6,
//                 decoration: BoxDecoration(
//                     color: Color(0xffffffff),
//                     borderRadius: BorderRadius.circular(
//                       6,
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey[300]!,
//                         blurRadius: 4,
//                         spreadRadius: 2,
//                         offset: Offset(1, 2),
//                       ),
//                     ]),
//               ),
//             ],
//           ),
//           ListTile(
//             title: Text(
//               "Confirmation",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontFamily: "Poppins",
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ),
//           ListTile(
//             title: Text(
//               "Cipta Saham Unggulan Syariah",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontFamily: "Poppins",
//                 fontSize: 14,
//               ),
//             ),
//             subtitle: Text(
//               "Saham",
//               style: TextStyle(
//                 fontSize: 12,
//               ),
//             ),
//             trailing: Text(
//               "Return 3 Tahun",
//               style: TextStyle(
//                 color: Colors.grey[500],
//                 fontFamily: "Poppins",
//                 fontSize: 13,
//               ),
//             ),
//           ),
//           ListTile(
//             title: Text(
//               "I AM BUMN Balanced Plus",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontFamily: "Poppins",
//                 fontSize: 14,
//               ),
//             ),
//             subtitle: Text(
//               "Saham",
//               style: TextStyle(
//                 fontSize: 12,
//               ),
//             ),
//             trailing: Text(
//               "Return 3 Tahun",
//               style: TextStyle(
//                 color: Colors.grey[500],
//                 fontFamily: "Poppins",
//                 fontSize: 13,
//               ),
//             ),
//           ),
//           ListTile(
//             title: Text(
//               "Star Equity",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontFamily: "Poppins",
//                 fontSize: 14,
//               ),
//             ),
//             subtitle: Text(
//               "Saham",
//               style: TextStyle(
//                 fontSize: 12,
//               ),
//             ),
//             trailing: Text(
//               "Return 3 Tahun",
//               style: TextStyle(
//                 color: Colors.grey[500],
//                 fontFamily: "Poppins",
//                 fontSize: 13,
//               ),
//             ),
//           ),
//           ListTile(
//             title: Text(
//               "I AM BUMN Balanced Plus",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontFamily: "Poppins",
//                 fontSize: 14,
//               ),
//             ),
//             subtitle: Text(
//               "Saham",
//               style: TextStyle(
//                 fontSize: 12,
//               ),
//             ),
//             trailing: Text(
//               "Return 3 Tahun",
//               style: TextStyle(
//                 color: Colors.grey[500],
//                 fontFamily: "Poppins",
//                 fontSize: 13,
//               ),
//             ),
//           ),
//           ListTile(
//             title: Text(
//               "Cipta Saham Unggulan Syariah",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontFamily: "Poppins",
//                 fontSize: 14,
//               ),
//             ),
//             subtitle: Text(
//               "Saham",
//               style: TextStyle(
//                 fontSize: 12,
//               ),
//             ),
//             trailing: Text(
//               "Return 3 Tahun",
//               style: TextStyle(
//                 color: Colors.grey[500],
//                 fontFamily: "Poppins",
//                 fontSize: 13,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
