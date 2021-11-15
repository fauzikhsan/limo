import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:zetproject/fiturArvita/askAnalyst.dart';
import 'package:zetproject/fiturArvita/trendfollowing.dart';

import '../textStyle.dart';

class Arvita extends StatefulWidget {
  const Arvita({Key? key}) : super(key: key);

  @override
  _ArvitaState createState() => _ArvitaState();
}

class _ArvitaState extends State<Arvita> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xffffffff,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height / 1,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 45,
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
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Arvita",
                                style: Parent(),
                              ),
                              Text(
                                "",
                                style: LihatSemua(),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context, rootNavigator: true).push(
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: AskAnalyst(),
                                ),
                              );
                            },
                            child: Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width / 1,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://t3.ftcdn.net/jpg/02/82/97/30/360_F_282973093_6VkMlmUG3XCXGNXF0RQRHsYvuzV5kBch.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(
                                  8,
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Fitur",
                                style: Parent(),
                              ),
                              Text(
                                "",
                                style: LihatSemua(),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: TrendFollowing(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Center(
                                              child: Icon(
                                                Icons.follow_the_signs_rounded,
                                                color: Color(
                                                  0xff058c42,
                                                ),
                                              ),
                                            ),
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey[300]!,
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  offset: Offset(1, 2),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "Trend",
                                            maxLines: 2,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Nunito",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            "Following",
                                            maxLines: 2,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Nunito",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        7,
                                      ),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.grey[400]!,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Center(
                                            child: Icon(
                                              Icons.query_stats_rounded,
                                              color: Color(
                                                0xff058c42,
                                              ),
                                            ),
                                          ),
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey[300]!,
                                                spreadRadius: 1,
                                                blurRadius: 1,
                                                offset: Offset(1, 2),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "Swing",
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Nunito",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "Trading",
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Nunito",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      7,
                                    ),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey[400]!,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                // Container(
                                //   child: Padding(
                                //     padding: const EdgeInsets.only(top: 8.0),
                                //     child: Column(
                                //       crossAxisAlignment:
                                //           CrossAxisAlignment.center,
                                //       children: [
                                //         Container(
                                //           child: Center(
                                //             child: Icon(
                                //               CupertinoIcons
                                //                   .bubble_left_bubble_right,
                                //               color: Color(
                                //                 0xff058c42,
                                //               ),
                                //             ),
                                //           ),
                                //           height: 30,
                                //           width: 30,
                                //           decoration: BoxDecoration(
                                //             borderRadius:
                                //                 BorderRadius.circular(40),
                                //             color: Colors.white,
                                //             boxShadow: [
                                //               BoxShadow(
                                //                 color: Colors.grey[300]!,
                                //                 spreadRadius: 1,
                                //                 blurRadius: 1,
                                //                 offset: Offset(1, 2),
                                //               ),
                                //             ],
                                //           ),
                                //         ),
                                //         SizedBox(
                                //           height: 8,
                                //         ),
                                //         Text(
                                //           "Ask",
                                //           maxLines: 2,
                                //           style: TextStyle(
                                //             color: Colors.black,
                                //             fontFamily: "Nunito",
                                //             fontSize: 12,
                                //             fontWeight: FontWeight.w500,
                                //           ),
                                //         ),
                                //         Text(
                                //           "Arvita",
                                //           maxLines: 2,
                                //           style: TextStyle(
                                //             color: Colors.black,
                                //             fontFamily: "Nunito",
                                //             fontSize: 12,
                                //             fontWeight: FontWeight.w500,
                                //           ),
                                //         ),
                                //       ],
                                //     ),
                                //   ),
                                //   width: 70,
                                //   decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(
                                //       7,
                                //     ),
                                //     color: Colors.white,
                                //     border: Border.all(
                                //       color: Colors.grey[400]!,
                                //     ),
                                //   ),
                                // ),
                                // SizedBox(
                                //   width: 8,
                                // ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Center(
                                            child: Icon(
                                              Icons.wb_sunny_outlined,
                                              color: Color(
                                                0xff058c42,
                                              ),
                                            ),
                                          ),
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey[300]!,
                                                spreadRadius: 1,
                                                blurRadius: 1,
                                                offset: Offset(1, 2),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "Day",
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Nunito",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "Trader",
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Nunito",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      7,
                                    ),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey[400]!,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Center(
                                            child: Icon(
                                              Icons.checklist,
                                              color: Color(
                                                0xff058c42,
                                              ),
                                            ),
                                          ),
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey[300]!,
                                                spreadRadius: 1,
                                                blurRadius: 1,
                                                offset: Offset(1, 2),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "Early",
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Nunito",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "Trend",
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Nunito",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      7,
                                    ),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey[400]!,
                                    ),
                                  ),
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
                                "Kategori",
                                style: Parent(),
                              ),
                              Text(
                                "Lihat Semua",
                                style: LihatSemua(),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TabBar(
                            indicatorSize: TabBarIndicatorSize.tab,
                            unselectedLabelColor: Colors.black,
                            labelColor: Colors.red,
                            isScrollable: true,
                            indicatorPadding: EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                            indicatorColor: Colors.black,
                            labelPadding: EdgeInsets.only(
                              left: 8,
                            ),
                            controller: controller,
                            tabs: [
                              Tab(
                                child: Container(
                                  height: 30,
                                  width: 80,
                                  child: Center(
                                    child: Text(
                                      "Top Value",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontFamily: "Nunito"),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ),
                                    color: Color(0xff00aa13),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  height: 30,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      "Top Frequency",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontFamily: "Nunito"),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ),
                                    color: Color(0xff00aa13),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  height: 30,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      "Top Volume",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontFamily: "Nunito"),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ),
                                    color: Color(0xff00aa13),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  height: 30,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      "Top Gain",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontFamily: "Nunito"),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ),
                                    color: Color(0xff00aa13),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  height: 30,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      "Top Loss",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontFamily: "Nunito"),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ),
                                    color: Color(0xff00aa13),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 2.5,
                            child: TabBarView(
                              controller: controller,
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
                                            padding: const EdgeInsets.only(
                                                left: 8, right: 8),
                                            child: Container(
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
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
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                        height: 50,
                                                        width: 50,
                                                        child: Center(
                                                          child: Container(
                                                            height: 40,
                                                            width: 40,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                50,
                                                              ),
                                                              image:
                                                                  DecorationImage(
                                                                image:
                                                                    NetworkImage(
                                                                  'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            color: Colors.grey,
                                                          ),
                                                          //   image: DecorationImage(
                                                          //     image: NetworkImage(
                                                          // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                                          //     ),
                                                          //   ),
                                                          color:
                                                              Color(0xffffffff),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors
                                                                  .grey[200]!,
                                                              spreadRadius: 1,
                                                              offset:
                                                                  Offset(1, 2),
                                                              blurRadius: 1,
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
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
                                                          const EdgeInsets.only(
                                                              top: 10.0),
                                                      child: Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Text("BBCA",
                                                                    style:
                                                                        TitleSaham1()),
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
                                                                    overflow:
                                                                        TextOverflow
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
                                                        color:
                                                            Color(0xff00aa13),
                                                        fontFamily: "Poppins",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 17),
                                                  ),
                                                  SizedBox(width: 15),
                                                  Text(
                                                    "+ 8,00 (3.04%)",
                                                    style: TextStyle(
                                                      color: Color(0xff00aa13),
                                                      fontFamily: "Poppins",
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8, right: 8),
                                            child: Container(
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
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
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                        height: 50,
                                                        width: 50,
                                                        child: Center(
                                                          child: Container(
                                                            height: 40,
                                                            width: 40,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                50,
                                                              ),
                                                              image:
                                                                  DecorationImage(
                                                                image:
                                                                    NetworkImage(
                                                                  'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbri.jpg',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            color: Colors.grey,
                                                          ),
                                                          //   image: DecorationImage(
                                                          //     image: NetworkImage(
                                                          // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                                          //     ),
                                                          //   ),
                                                          color:
                                                              Color(0xffffffff),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors
                                                                  .grey[200]!,
                                                              spreadRadius: 1,
                                                              offset:
                                                                  Offset(1, 2),
                                                              blurRadius: 1,
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
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
                                                          const EdgeInsets.only(
                                                              top: 10.0),
                                                      child: Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Text("BBRI",
                                                                    style:
                                                                        TitleSaham1()),
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
                                                                    "Bank Rakyat Indonesia",
                                                                    overflow:
                                                                        TextOverflow
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
                                                        color:
                                                            Color(0xff00aa13),
                                                        fontFamily: "Poppins",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 17),
                                                  ),
                                                  SizedBox(width: 15),
                                                  Text(
                                                    "+ 8,00 (3.04%)",
                                                    style: TextStyle(
                                                      color: Color(0xff00aa13),
                                                      fontFamily: "Poppins",
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8, right: 8),
                                            child: Container(
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
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
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                        height: 50,
                                                        width: 50,
                                                        child: Center(
                                                          child: Container(
                                                            height: 40,
                                                            width: 40,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                50,
                                                              ),
                                                              image:
                                                                  DecorationImage(
                                                                image:
                                                                    NetworkImage(
                                                                  'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/tlkm.jpg',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            color: Colors.grey,
                                                          ),
                                                          //   image: DecorationImage(
                                                          //     image: NetworkImage(
                                                          // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                                          //     ),
                                                          //   ),
                                                          color:
                                                              Color(0xffffffff),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors
                                                                  .grey[200]!,
                                                              spreadRadius: 1,
                                                              offset:
                                                                  Offset(1, 2),
                                                              blurRadius: 1,
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
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
                                                          const EdgeInsets.only(
                                                              top: 10.0),
                                                      child: Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Text("TLKM",
                                                                    style:
                                                                        TitleSaham1()),
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
                                                                    "Telekomunikasi Indonesia",
                                                                    overflow:
                                                                        TextOverflow
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
                                                        color:
                                                            Color(0xff00aa13),
                                                        fontFamily: "Poppins",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 17),
                                                  ),
                                                  SizedBox(width: 15),
                                                  Text(
                                                    "+ 8,00 (3.04%)",
                                                    style: TextStyle(
                                                      color: Color(0xff00aa13),
                                                      fontFamily: "Poppins",
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8, right: 8),
                                            child: Container(
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
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
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                        height: 50,
                                                        width: 50,
                                                        child: Center(
                                                          child: Container(
                                                            height: 40,
                                                            width: 40,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                50,
                                                              ),
                                                              image:
                                                                  DecorationImage(
                                                                image:
                                                                    NetworkImage(
                                                                  'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/agro.jpg',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                            color: Colors.grey,
                                                          ),
                                                          //   image: DecorationImage(
                                                          //     image: NetworkImage(
                                                          // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                                          //     ),
                                                          //   ),
                                                          color:
                                                              Color(0xffffffff),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors
                                                                  .grey[200]!,
                                                              spreadRadius: 1,
                                                              offset:
                                                                  Offset(1, 2),
                                                              blurRadius: 1,
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
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
                                                          const EdgeInsets.only(
                                                              top: 10.0),
                                                      child: Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Text("AGRO",
                                                                    style:
                                                                        TitleSaham1()),
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
                                                                    "Bank BRI Agroniaga",
                                                                    overflow:
                                                                        TextOverflow
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
                                                        color:
                                                            Color(0xff00aa13),
                                                        fontFamily: "Poppins",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 17),
                                                  ),
                                                  SizedBox(width: 15),
                                                  Text(
                                                    "+ 8,00 (3.04%)",
                                                    style: TextStyle(
                                                      color: Color(0xff00aa13),
                                                      fontFamily: "Poppins",
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8, top: 20),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 0,
                                        ),
                                        Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8, right: 8),
                                              child: Container(
                                                height: 65,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 5.0,
                                                    right: 5,
                                                    top: 4,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Container(
                                                          height: 50,
                                                          width: 50,
                                                          child: Center(
                                                            child: Container(
                                                              height: 40,
                                                              width: 40,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  50,
                                                                ),
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      NetworkImage(
                                                                    'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/tlkm.jpg',
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            //   image: DecorationImage(
                                                            //     image: NetworkImage(
                                                            // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                                            //     ),
                                                            //   ),
                                                            color: Color(
                                                                0xffffffff),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Colors
                                                                    .grey[200]!,
                                                                spreadRadius: 1,
                                                                offset: Offset(
                                                                    1, 2),
                                                                blurRadius: 1,
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
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
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 10.0),
                                                        child: Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Text("TLKM",
                                                                      style:
                                                                          TitleSaham1()),
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
                                                                      "Telekomunikasi Indonesia",
                                                                      overflow:
                                                                          TextOverflow
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
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      "30850",
                                                      style: TextStyle(
                                                          color: Colors
                                                              .greenAccent,
                                                          fontFamily: "Poppins",
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 17),
                                                    ),
                                                    SizedBox(width: 15),
                                                    Text(
                                                      "+ 8,00 (3.04%)",
                                                      style: TextStyle(
                                                        color:
                                                            Colors.greenAccent,
                                                        fontFamily: "Poppins",
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                        Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8, right: 8),
                                              child: Container(
                                                height: 65,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 5.0,
                                                    right: 5,
                                                    top: 4,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Container(
                                                          height: 50,
                                                          width: 50,
                                                          child: Center(
                                                            child: Container(
                                                              height: 40,
                                                              width: 40,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  50,
                                                                ),
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      NetworkImage(
                                                                    'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/agro.jpg',
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            //   image: DecorationImage(
                                                            //     image: NetworkImage(
                                                            // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                                            //     ),
                                                            //   ),
                                                            color: Color(
                                                                0xffffffff),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Colors
                                                                    .grey[200]!,
                                                                spreadRadius: 1,
                                                                offset: Offset(
                                                                    1, 2),
                                                                blurRadius: 1,
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
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
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 10.0),
                                                        child: Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Text("AGRO",
                                                                      style:
                                                                          TitleSaham1()),
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
                                                                      "Bank BRI Agroniaga",
                                                                      overflow:
                                                                          TextOverflow
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
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      "30850",
                                                      style: TextStyle(
                                                          color: Colors
                                                              .greenAccent,
                                                          fontFamily: "Poppins",
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 17),
                                                    ),
                                                    SizedBox(width: 15),
                                                    Text(
                                                      "+ 8,00 (3.04%)",
                                                      style: TextStyle(
                                                        color:
                                                            Colors.greenAccent,
                                                        fontFamily: "Poppins",
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                ),
                                Container(
                                  child: Text(
                                    " Tiga ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " Empat ",
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " Lima ",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Text(
                          //       "Syariah",
                          //       style: Parent(),
                          //     ),
                          //     Text(
                          //       "Lihat Semua",
                          //       style: LihatSemua(),
                          //     ),
                          //   ],
                          // ),
                          // SizedBox(
                          //   height: 15,
                          // ),
                          // SizedBox(
                          //   height: 70,
                          //   child: ListView(
                          //     scrollDirection: Axis.horizontal,
                          //     children: [
                          //       Container(
                          //         width: 150,
                          //         decoration: BoxDecoration(
                          //           color: Colors.red,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Text(
                          //       "Fitur",
                          //       style: Parent(),
                          //     ),
                          //     Text(
                          //       "Lihat Semua",
                          //       style: LihatSemua(),
                          //     ),
                          //   ],
                          // ),
                          // SizedBox(
                          //   height: 15,
                          // ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     Text(
                          //       "Fitur",
                          //       style: Parent(),
                          //     ),
                          //     Text(
                          //       "Lihat Semua",
                          //       style: LihatSemua(),
                          //     ),
                          //   ],
                          // ),
                          // SizedBox(
                          //   height: 15,
                          // ),
                          // Container(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 44,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
