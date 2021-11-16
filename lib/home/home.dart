import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zetproject/detailHome/dashboard.dart';
import 'package:zetproject/profil/deposit.dart';
import 'package:zetproject/profil/history.dart';
import 'package:zetproject/profil/withdraw.dart';
import 'package:zetproject/subScreen/beli.dart';
import 'package:zetproject/subScreen/listBeli.dart';
import 'package:zetproject/textStyle.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tetra Saham',
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   /* dark theme settings */
      // ),
      theme: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _controller = PageController(
    initialPage: 1,
    viewportFraction: 0.9,
  );
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
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                      top: 55,
                      right: 25,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: "Poppins",
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Fauzi Ikhsan Fajar Muzaqi",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                // Text(
                                //   "Fighter",
                                //   style: TextStyle(
                                //     color: Colors.white,
                                //     fontSize: 14,
                                //     fontWeight: FontWeight.w600,
                                //     fontFamily: "Poppins",
                                //   ),
                                // ),
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  40,
                                ),
                              ),
                              child: Icon(
                                CupertinoIcons.person,
                                color: Colors.grey,
                                size: 28,
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rp. 23,424,000',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: Deposit(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            "Top Up",
                                            style: TextStyle(
                                              fontFamily: "Nunito",
                                              fontSize: 12,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        height: 20,
                                        width: 65,
                                        decoration: BoxDecoration(
                                          color: Colors.white12,
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: Withdraw(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            "Withdraw",
                                            style: TextStyle(
                                              fontFamily: "Nunito",
                                              fontSize: 12,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        height: 20,
                                        width: 65,
                                        decoration: BoxDecoration(
                                          color: Colors.white12,
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            child: History(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            "Riwayat",
                                            style: TextStyle(
                                              fontFamily: "Nunito",
                                              fontSize: 12,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        height: 20,
                                        width: 65,
                                        decoration: BoxDecoration(
                                          color: Colors.white12,
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    // Icon(
                                    //   Icons.money_sharp,
                                    //   color: Colors.white,
                                    // ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    // Text(
                                    //   '5600',
                                    //   style: TextStyle(
                                    //     color: Colors.white,
                                    //     fontFamily: "Poppins",
                                    //     fontSize: 14,
                                    //     fontWeight: FontWeight.w500,
                                    //   ),
                                    // ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Total return ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Rp. 0-',
                                  style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                    color: Color(0xff058c42),
                    // gradient: LinearGradient(
                    //   begin: Alignment.topRight,
                    //   end: Alignment.bottomLeft,
                    //   colors: [
                    //     Color(0xff16db65),
                    //   ],
                    // ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        0,
                      ),
                      bottomRight: Radius.circular(
                        0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 200.0,
                    left: 35,
                    right: 35,
                  ),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        right: 15,
                        top: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Market Overview",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "SSE",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "+ 2.02 %",
                                    style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Nikkei 225",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "+ 0.02 %",
                                    style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "SSE",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "- 4.02 %",
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    height: 90,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[500]!,
                          spreadRadius: 3,
                          blurRadius: 20,
                          offset: Offset(4, 5),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: 20,
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //     left: 15.0,
            //     right: 15,
            //   ),
            //   child: Container(
            //     child: Padding(
            //       padding: const EdgeInsets.only(
            //         left: 15.0,
            //         right: 15,
            //       ),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           Container(
            //             height: 70,
            //             width: 70,
            //             decoration: BoxDecoration(
            //               image: DecorationImage(
            //                 image: AssetImage(
            //                   'images/ask.png',
            //                 ),
            //               ),
            //               color: Color(
            //                 0xffffffff,
            //               ),
            //               borderRadius: BorderRadius.circular(
            //                 60,
            //               ),
            //             ),
            //           ),
            //           SizedBox(
            //             width: 10,
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(
            //               top: 15.0,
            //             ),
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   "Yuk, lengkapi kekurangan data mu!",
            //                   style: TextStyle(
            //                     color: Colors.black,
            //                     fontFamily: "Poppins",
            //                     fontWeight: FontWeight.w600,
            //                   ),
            //                 ),
            //                 SizedBox(
            //                   height: 6,
            //                 ),
            //                 Text(
            //                   "Lorem ipsum dolmen atau",
            //                   style: TextStyle(
            //                     color: Colors.grey,
            //                     fontFamily: "Poppins",
            //                     fontSize: 12,
            //                     fontWeight: FontWeight.w600,
            //                   ),
            //                 ),
            //                 Text(
            //                   "Yuk, lengkapi kekurangan data mu!",
            //                   style: TextStyle(
            //                     color: Colors.grey,
            //                     fontFamily: "Poppins",
            //                     fontSize: 12,
            //                     fontWeight: FontWeight.w600,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     height: 100,
            //     width: MediaQuery.of(context).size.width / 1,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(
            //         7,
            //       ),
            //       color: Colors.white,
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.grey[200]!,
            //           spreadRadius: 6,
            //           blurRadius: 7,
            //           offset: Offset(1, 2),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 20,
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
                    "Special Buat Kamu",
                    style: Parent(),
                  ),
                  Text(
                    "Lihat semua",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // Icon(
                  //   CupertinoIcons.arrow_uturn_right,
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6.5,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        "Banner Promo",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    margin: EdgeInsets.only(
                      left: 0,
                      right: 15,
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Banner Promo",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    margin: EdgeInsets.only(
                      left: 0,
                      right: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Wishlist",
                    style: Parent(),
                  ),
                  Text(
                    "Lihat semua",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // Icon(
                  //   CupertinoIcons.arrow_uturn_right,
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              // border: Border.all(
                              //   color: Colors.grey[300]!,
                              // ),
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
                            color: Colors.greenAccent,
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
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "BKSL",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "+ 1.02 %",
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: Dashboard(
                            halaman: '',
                            kodesaham: '',
                            route: '',
                          ),
                        ),
                      );
                      // Navigator.of(context, rootNavigator: true).push(
                      // MaterialPageRoute(
                      //   builder: (context) => Dashboard(),
                      //   ),
                      // );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: Center(
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                // border: Border.all(
                                //   color: Colors.grey[300]!,
                                // ),
                                borderRadius: BorderRadius.circular(
                                  50,
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/pgas.jpg',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.greenAccent,
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
                            borderRadius: BorderRadius.circular(
                              50,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "PGAS",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "+ 1.02 %",
                          style: TextStyle(
                            color: Colors.green,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              // border: Border.all(
                              //   color: Colors.grey[300]!,
                              // ),
                              borderRadius: BorderRadius.circular(
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
                            color: Colors.redAccent,
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
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "BBCA",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "+ 1.02 %",
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                            color: Colors.greenAccent,
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
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "BBCA",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "+ 1.02 %",
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                            color: Colors.greenAccent,
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
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "BBCA",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "+ 1.02 %",
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pending Orders",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Lihat semua",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25,
                top: 20,
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(
                        0xffffffff,
                      ),
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                    ),
                    height: 60,
                    width: 500,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: Center(
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
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
                              borderRadius: BorderRadius.circular(
                                50,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Buy 100 Lot of',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' TLKM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                        right: 15.0,
                        top: 17,
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25,
                top: 15,
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(
                        0xffffffff,
                      ),
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                    ),
                    height: 60,
                    width: 500,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: Center(
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    50,
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbni.jpg',
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
                              borderRadius: BorderRadius.circular(
                                50,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Buy 100 Lot of',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' BBNI',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                        right: 15.0,
                        top: 17,
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stock Positions",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Lihat semua",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    right: 25,
                    top: 15,
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
                              color: Colors.greenAccent,
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
                            borderRadius: BorderRadius.circular(
                              50,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("BBCA", style: TitleSaham1()),
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
                  padding: const EdgeInsets.only(
                    top: 25.0,
                    right: 25,
                  ),
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
            SizedBox(
              height: 20,
            ),
          ],
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
