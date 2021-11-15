import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../textStyle.dart';
import 'package:pie_chart/pie_chart.dart';

class Portofolio extends StatefulWidget {
  const Portofolio({Key? key}) : super(key: key);

  @override
  _PortofolioState createState() => _PortofolioState();
}

class _PortofolioState extends State<Portofolio>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    _controller = new TabController(vsync: this, length: 2);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  Map<String, double> dataMap = {
    "Saham": 5,
    // "Reksadana": 3,
    // "Saham Syairah": 2,
    "Cash RDN": 2,
  };
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xffffffff,
      ),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        title: Text(
          'Portofolio',
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Poppins",
            fontSize: 18,
          ),
        ),
        bottom: TabBar(
          indicatorColor: Color(
            0xff00aa13,
          ),
          indicatorWeight: 1,
          indicatorPadding: EdgeInsets.only(right: 70, left: 70),
          controller: _controller,
          tabs: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Portofolio",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              "Dampak",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          TabPortofolio(),
          TabDampak(),
        ],
      ),
    );
  }
}

class TabPortofolio extends StatefulWidget {
  const TabPortofolio({Key? key}) : super(key: key);

  @override
  _TabPortofolioState createState() => _TabPortofolioState();
}

class _TabPortofolioState extends State<TabPortofolio>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    _controller = new TabController(vsync: this, length: 2);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  Map<String, double> dataMap = {
    "Saham": 5,
    // "Reksadana": 3,
    // "Saham Syairah": 2,
    "Cash RDN": 2,
  };
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xffffffff,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              PieChart(
                dataMap: dataMap,
                animationDuration: Duration(milliseconds: 800),
                chartLegendSpacing: 80,
                chartRadius: MediaQuery.of(context).size.width / 3.2,
                // colorList: colorList,
                initialAngleInDegree: 0,
                chartType: ChartType.ring,
                ringStrokeWidth: 32,
                centerText: "CHART",
                colorList: [
                  Colors.red,
                  Colors.green,
                  // Colors.blue,
                  // Colors.amber,
                ],
                legendOptions: LegendOptions(
                  showLegendsInRow: false,
                  legendPosition: LegendPosition.right,
                  showLegends: true,
                  // legendShape: _BoxShape.circle,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: true,
                  showChartValues: true,
                  // uji adds
                  // true chart values will shows value of pie chart
                  showChartValuesInPercentage: true,
                  showChartValuesOutside: true,
                  decimalPlaces: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                  right: 25,
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Akun",
                      style: Parent(),
                    ),
                    Text(
                      "Lihat Semua",
                      style: LihatSemua(),
                    ),
                  ],
                ),
              ),
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
                          "Total Investasi",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Nunito",
                            fontSize: 12,
                          ),
                        ),
                        Icon(
                          Icons.password,
                          color: Colors.green,
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Rp.',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' 1,798,500',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Nunito",
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Pendapatan",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Nunito",
                                fontSize: 12,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: '- Rp.',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' 2,798,500',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Nunito",
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Return",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Nunito",
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "- 1,24%",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Nunito",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 25,
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
                      "Koleksi ku",
                      style: Parent(),
                    ),
                    Text(
                      "Lihat Semua",
                      style: LihatSemua(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                  right: 25,
                  top: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Name",
                      style: SubtitleSaham1(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80.0),
                      child: Text(
                        "Value><",
                        style: SubtitleSaham1(),
                      ),
                    ),
                    Text(
                      "Change %",
                      style: SubtitleSaham1(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        right: 25,
                        top: 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "BBCA",
                                  style: TitleSaham1(),
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    "Bank Central Asia",
                                    overflow: TextOverflow.ellipsis,
                                    style: SubtitleSaham1(),
                                  ),
                                ),
                              ],
                            ),

                            // syariah(
                            //   data[i]['syariah'],
                            // ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "30850",
                                style: TextStyle(
                                    color: Color(0xff00aa13),
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              Text(
                                "+ 8,00",
                                style: TextStyle(
                                  color: Color(0xff00aa13),
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "(3.04%)",
                            style: TextStyle(
                              color: Color(0xff00aa13),
                              fontFamily: "Poppins",
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabDampak extends StatefulWidget {
  const TabDampak({Key? key}) : super(key: key);

  @override
  _TabDampakState createState() => _TabDampakState();
}

class _TabDampakState extends State<TabDampak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
// class Saham extends StatefulWidget {
//   const Saham({Key? key}) : super(key: key);

//   @override
//   _SahamState createState() => _SahamState();
// }

// class _SahamState extends State<Saham> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color(0xffffffff),
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 15,
//             ),
//             Text(
//               "Rp. 421.884.000",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontFamily: "Poppins",
//                 fontSize: 23,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Rp. 323.000 (0,9 %)",
//                   style: TextStyle(
//                     color: Colors.greenAccent,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 8,
//                 ),
//                 Text(
//                   "past week",
//                   style: TextStyle(
//                     color: Colors.grey,
//                     fontFamily: "Poppins",
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               width: 8,
//             ),
//             Image.asset(
//               "images/chart.jpg",
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 15.0,
//                 right: 15,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "1D",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontFamily: "Poppins",
//                     ),
//                   ),
//                   Text(
//                     "1W",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontFamily: "Poppins",
//                     ),
//                   ),
//                   Text(
//                     "1M",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontFamily: "Poppins",
//                     ),
//                   ),
//                   Container(
//                     height: 18,
//                     width: 35,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(
//                         8,
//                       ),
//                       color: Color(
//                         0xff25CED1,
//                       ),
//                     ),
//                     child: Center(
//                       child: Text(
//                         "1Y",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontFamily: "Poppins",
//                         ),
//                       ),
//                     ),
//                   ),
//                   Text(
//                     "5Y",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontFamily: "Poppins",
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Akun",
//                     style: Parent(),
//                   ),
//                   Text(
//                     "Lihat Semua",
//                     style: LihatSemua(),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 15.0,
//                 right: 15,
//                 top: 15,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Total Investasi",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontFamily: "Nunito",
//                           fontSize: 12,
//                         ),
//                       ),
//                       Icon(
//                         Icons.password,
//                         color: Colors.green,
//                       ),
//                     ],
//                   ),
//                   RichText(
//                     text: TextSpan(
//                       text: 'Rp.',
//                       style: TextStyle(color: Colors.black, fontSize: 14),
//                       children: <TextSpan>[
//                         TextSpan(
//                           text: ' 1,798,500',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontFamily: "Nunito",
//                             fontSize: 23,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Total Pendapatan",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontFamily: "Nunito",
//                               fontSize: 12,
//                             ),
//                           ),
//                           RichText(
//                             text: TextSpan(
//                               text: '- Rp.',
//                               style:
//                                   TextStyle(color: Colors.black, fontSize: 14),
//                               children: <TextSpan>[
//                                 TextSpan(
//                                   text: ' 2,798,500',
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontFamily: "Nunito",
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       Column(
//                         children: [
//                           Text(
//                             "Return",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontFamily: "Nunito",
//                               fontSize: 12,
//                             ),
//                           ),
//                           Text(
//                             "- 1,24%",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontFamily: "Nunito",
//                               fontSize: 12,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             ListTile(
//               title: Text(
//                 "Pending buy",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontFamily: "Poppins",
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 15.0,
//                 right: 15,
//               ),
//               child: Stack(
//                 children: [
//                   Container(
//                     height: 65,
//                     margin: EdgeInsets.only(
//                       bottom: 20,
//                       left: 0,
//                       right: 0,
//                     ),
//                     width: MediaQuery.of(context).size.width / 1,
//                     decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey[100]!,
//                         spreadRadius: 0.8,
//                         blurRadius: 0.7,
//                         offset: Offset(1, 1),
//                       ),
//                     ]),
//                     child: Row(
//                       children: [
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: Container(
//                             height: 50,
//                             width: 50,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: NetworkImage(
//                                     'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
//                                   ),
//                                   fit: BoxFit.contain),
//                               borderRadius: BorderRadius.circular(50),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.white,
//                                   spreadRadius: 1,
//                                   blurRadius: 3,
//                                   offset: Offset(
//                                     1,
//                                     2,
//                                   ),
//                                 ),
//                               ],
//                               border: Border(
//                                 top: BorderSide(
//                                   width: 1.0,
//                                   color: Color(
//                                     0xff25CED1,
//                                   ),
//                                 ),
//                                 left: BorderSide(
//                                   width: 1.0,
//                                   color: Color(
//                                     0xff25CED1,
//                                   ),
//                                 ),
//                                 right: BorderSide(
//                                   width: 1.0,
//                                   color: Color(
//                                     0xff25CED1,
//                                   ),
//                                 ),
//                                 bottom: BorderSide(
//                                   width: 1.0,
//                                   color: Color(
//                                     0xff25CED1,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 7.0),
//                           child: Align(
//                             alignment: Alignment.center,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Text(
//                                       "BBCA",
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontFamily: "Poppins",
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 17),
//                                     ),
//                                     SizedBox(
//                                       width: 8,
//                                     ),
//                                     // syariah(
//                                     //   data[i]['syariah'],
//                                     // ),
//                                   ],
//                                 ),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       height: 25,
//                                       width: 230,
//                                       child: Text(
//                                         "Bank Central Asia",
//                                         overflow: TextOverflow.ellipsis,
//                                         style: TextStyle(
//                                             color: Colors.grey,
//                                             fontFamily: "Poppins",
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 12),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10.0, right: 8),
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Text(
//                             "Buy 200",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontFamily: "Poppins",
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 15),
//                           ),
//                           SizedBox(width: 15),
//                           Text(
//                             "+ 8,00 (3.04%)",
//                             style: TextStyle(
//                               color: Colors.greenAccent,
//                               fontFamily: "Poppins",
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                           // Row(
//                           //   mainAxisAlignment: MainAxisAlignment.end,
//                           //   children: [
//                           //     Text(
//                           //       "Volume :  ",
//                           //       style: TextStyle(
//                           //         color: Colors.black,
//                           //         fontFamily: "Poppins",
//                           //         fontSize: 11,
//                           //         fontWeight: FontWeight.w400,
//                           //       ),
//                           //     ),
//                           //     Text(
//                           //       "Txt",
//                           //       style: TextStyle(
//                           //         color: Colors.black,
//                           //         fontFamily: "Poppins",
//                           //         fontSize: 13,
//                           //         fontWeight: FontWeight.w500,
//                           //       ),
//                           //     ),
//                           //   ],
//                           // ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             ListTile(
//               title: Text(
//                 "Collections",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontFamily: "Poppins",
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 15.0,
//                 right: 15,
//               ),
//               child: Stack(
//                 children: [
//                   Container(
//                     height: 65,
//                     margin: EdgeInsets.only(
//                       bottom: 20,
//                       left: 0,
//                       right: 0,
//                     ),
//                     width: MediaQuery.of(context).size.width / 1,
//                     decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey[100]!,
//                         spreadRadius: 0.8,
//                         blurRadius: 0.7,
//                         offset: Offset(1, 1),
//                       ),
//                     ]),
//                     child: Row(
//                       children: [
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: Container(
//                             height: 50,
//                             width: 50,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: NetworkImage(
//                                     'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbri.jpg',
//                                   ),
//                                   fit: BoxFit.contain),
//                               borderRadius: BorderRadius.circular(50),
//                               border: Border(
//                                 top: BorderSide(
//                                   width: 1.0,
//                                   color: Color(
//                                     0xff25CED1,
//                                   ),
//                                 ),
//                                 left: BorderSide(
//                                   width: 1.0,
//                                   color: Color(
//                                     0xff25CED1,
//                                   ),
//                                 ),
//                                 right: BorderSide(
//                                   width: 1.0,
//                                   color: Color(
//                                     0xff25CED1,
//                                   ),
//                                 ),
//                                 bottom: BorderSide(
//                                   width: 1.0,
//                                   color: Color(
//                                     0xff25CED1,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 7.0),
//                           child: Align(
//                             alignment: Alignment.center,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Text(
//                                       "BBRI",
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontFamily: "Poppins",
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 17),
//                                     ),
//                                     SizedBox(
//                                       width: 8,
//                                     ),
//                                     // syariah(
//                                     //   data[i]['syariah'],
//                                     // ),
//                                   ],
//                                 ),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       height: 25,
//                                       width: 230,
//                                       child: Text(
//                                         "Bank Rakyat Indonesia",
//                                         overflow: TextOverflow.ellipsis,
//                                         style: TextStyle(
//                                             color: Colors.grey,
//                                             fontFamily: "Poppins",
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 12),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10.0, right: 8),
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Text(
//                             "Grafik",
//                             style: TextStyle(
//                               color: Colors.greenAccent,
//                               fontFamily: "Poppins",
//                               fontSize: 12,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 55,
//                           ),
//                           Text(
//                             "Buy 200",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontFamily: "Poppins",
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 15),
//                           ),

//                           // Row(
//                           //   mainAxisAlignment: MainAxisAlignment.end,
//                           //   children: [
//                           //     Text(
//                           //       "Volume :  ",
//                           //       style: TextStyle(
//                           //         color: Colors.black,
//                           //         fontFamily: "Poppins",
//                           //         fontSize: 11,
//                           //         fontWeight: FontWeight.w400,
//                           //       ),
//                           //     ),
//                           //     Text(
//                           //       "Txt",
//                           //       style: TextStyle(
//                           //         color: Colors.black,
//                           //         fontFamily: "Poppins",
//                           //         fontSize: 13,
//                           //         fontWeight: FontWeight.w500,
//                           //       ),
//                           //     ),
//                           //   ],
//                           // ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 15.0,
//                 right: 15,
//               ),
//               child: Stack(
//                 children: [
//                   Container(
//                     height: 65,
//                     margin: EdgeInsets.only(
//                       bottom: 20,
//                       left: 0,
//                       right: 0,
//                     ),
//                     width: MediaQuery.of(context).size.width / 1,
//                     decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey[100]!,
//                         spreadRadius: 0.8,
//                         blurRadius: 0.7,
//                         offset: Offset(1, 1),
//                       ),
//                     ]),
//                     child: Row(
//                       children: [
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: Container(
//                             height: 50,
//                             width: 50,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: NetworkImage(
//                                     'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/argo.jpg',
//                                   ),
//                                   fit: BoxFit.contain),
//                               borderRadius: BorderRadius.circular(50),
//                               border: Border(
//                                 top: BorderSide(
//                                   width: 1.0,
//                                   color: Color(
//                                     0xff25CED1,
//                                   ),
//                                 ),
//                                 left: BorderSide(
//                                   width: 1.0,
//                                   color: Color(
//                                     0xff25CED1,
//                                   ),
//                                 ),
//                                 right: BorderSide(
//                                   width: 1.0,
//                                   color: Color(
//                                     0xff25CED1,
//                                   ),
//                                 ),
//                                 bottom: BorderSide(
//                                   width: 1.0,
//                                   color: Color(
//                                     0xff25CED1,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 7.0),
//                           child: Align(
//                             alignment: Alignment.center,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Text(
//                                       "AGRO",
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontFamily: "Poppins",
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 17),
//                                     ),
//                                     SizedBox(
//                                       width: 8,
//                                     ),
//                                     // syariah(
//                                     //   data[i]['syariah'],
//                                     // ),
//                                   ],
//                                 ),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       height: 25,
//                                       width: 230,
//                                       child: Text(
//                                         "Bank BRI Agroniaga",
//                                         overflow: TextOverflow.ellipsis,
//                                         style: TextStyle(
//                                             color: Colors.grey,
//                                             fontFamily: "Poppins",
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 12),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10.0, right: 8),
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Text(
//                             "Grafik",
//                             style: TextStyle(
//                               color: Colors.greenAccent,
//                               fontFamily: "Poppins",
//                               fontSize: 12,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 55,
//                           ),
//                           Text(
//                             "Buy 200",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontFamily: "Poppins",
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 15),
//                           ),

//                           // Row(
//                           //   mainAxisAlignment: MainAxisAlignment.end,
//                           //   children: [
//                           //     Text(
//                           //       "Volume :  ",
//                           //       style: TextStyle(
//                           //         color: Colors.black,
//                           //         fontFamily: "Poppins",
//                           //         fontSize: 11,
//                           //         fontWeight: FontWeight.w400,
//                           //       ),
//                           //     ),
//                           //     Text(
//                           //       "Txt",
//                           //       style: TextStyle(
//                           //         color: Colors.black,
//                           //         fontFamily: "Poppins",
//                           //         fontSize: 13,
//                           //         fontWeight: FontWeight.w500,
//                           //       ),
//                           //     ),
//                           //   ],
//                           // ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 15.0,
//                 right: 15,
//               ),
//               child: Stack(
//                 children: [
//                   Container(
//                     height: 65,
//                     margin: EdgeInsets.only(
//                       bottom: 20,
//                       left: 0,
//                       right: 0,
//                     ),
//                     width: MediaQuery.of(context).size.width / 1,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey[100]!,
//                           spreadRadius: 0.8,
//                           blurRadius: 0.7,
//                           offset: Offset(1, 1),
//                         ),
//                       ],
//                     ),
//                     child: Row(
//                       children: [
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: Container(
//                             height: 50,
//                             width: 50,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: NetworkImage(
//                                     'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/ptpp.jpg',
//                                   ),
//                                   fit: BoxFit.contain),
//                               borderRadius: BorderRadius.circular(50),
//                               border: Border(
//                                 top: BorderSide(
//                                   width: 1.0,
//                                   color: Color(
//                                     0xff25CED1,
//                                   ),
//                                 ),
//                                 left: BorderSide(
//                                   width: 1.0,
//                                   color: Color(
//                                     0xff25CED1,
//                                   ),
//                                 ),
//                                 right: BorderSide(
//                                   width: 1.0,
//                                   color: Color(
//                                     0xff25CED1,
//                                   ),
//                                 ),
//                                 bottom: BorderSide(
//                                   width: 1.0,
//                                   color: Color(
//                                     0xff25CED1,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 7.0),
//                           child: Align(
//                             alignment: Alignment.center,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Text(
//                                       "PTPP",
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         fontFamily: "Poppins",
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 17,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 8,
//                                     ),
//                                     // syariah(
//                                     //   data[i]['syariah'],
//                                     // ),
//                                   ],
//                                 ),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       height: 25,
//                                       width: 230,
//                                       child: Text(
//                                         "PT Pembangunan Perumahan Tbk",
//                                         overflow: TextOverflow.ellipsis,
//                                         style: TextStyle(
//                                             color: Colors.grey,
//                                             fontFamily: "Poppins",
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 12),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10.0, right: 8),
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Text(
//                             "Grafik",
//                             style: TextStyle(
//                               color: Colors.greenAccent,
//                               fontFamily: "Poppins",
//                               fontSize: 12,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 55,
//                           ),
//                           Text(
//                             "Buy 200",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontFamily: "Poppins",
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 15),
//                           ),

//                           // Row(
//                           //   mainAxisAlignment: MainAxisAlignment.end,
//                           //   children: [
//                           //     Text(
//                           //       "Volume :  ",
//                           //       style: TextStyle(
//                           //         color: Colors.black,
//                           //         fontFamily: "Poppins",
//                           //         fontSize: 11,
//                           //         fontWeight: FontWeight.w400,
//                           //       ),
//                           //     ),
//                           //     Text(
//                           //       "Txt",
//                           //       style: TextStyle(
//                           //         color: Colors.black,
//                           //         fontFamily: "Poppins",
//                           //         fontSize: 13,
//                           //         fontWeight: FontWeight.w500,
//                           //       ),
//                           //     ),
//                           //   ],
//                           // ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Reksadana extends StatefulWidget {
//   const Reksadana({Key? key}) : super(key: key);

//   @override
//   _ReksadanaState createState() => _ReksadanaState();
// }

// class _ReksadanaState extends State<Reksadana> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color(0xffffffff),
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 15,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 15.0,
//                 right: 15,
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Akun",
//                     style: Parent(),
//                   ),
//                   Text(
//                     "Lihat Semua",
//                     style: LihatSemua(),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 15.0,
//                 right: 15,
//                 top: 15,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Total Investasi",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontFamily: "Nunito",
//                           fontSize: 12,
//                         ),
//                       ),
//                       Icon(
//                         Icons.password,
//                         color: Colors.green,
//                       ),
//                     ],
//                   ),
//                   RichText(
//                     text: TextSpan(
//                       text: 'Rp.',
//                       style: TextStyle(color: Colors.black, fontSize: 14),
//                       children: <TextSpan>[
//                         TextSpan(
//                           text: ' 1,798,500',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontFamily: "Nunito",
//                             fontSize: 23,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Total Pendapatan",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontFamily: "Nunito",
//                               fontSize: 12,
//                             ),
//                           ),
//                           RichText(
//                             text: TextSpan(
//                               text: '- Rp.',
//                               style:
//                                   TextStyle(color: Colors.black, fontSize: 14),
//                               children: <TextSpan>[
//                                 TextSpan(
//                                   text: ' 2,798,500',
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontFamily: "Nunito",
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       Column(
//                         children: [
//                           Text(
//                             "Return",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontFamily: "Nunito",
//                               fontSize: 12,
//                             ),
//                           ),
//                           Text(
//                             "- 1,24%",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontFamily: "Nunito",
//                               fontSize: 12,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   // left: 15.0,
//                   // right: 15,
//                   ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Stack(
//                     children: [
//                       Container(
//                         child: Padding(
//                           padding: const EdgeInsets.only(
//                             top: 25.0,
//                             left: 10,
//                             right: 10,
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Dana Darurat",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontFamily: "Poppins",
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Text(
//                                 "1 Reksadana",
//                                 style: TextStyle(
//                                   color: Colors.grey,
//                                   fontFamily: "Poppins",
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 "Rp. 1.806.442",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontFamily: "Poppins",
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               Text(
//                                 "- Rp. 232.000 (+2.3 %) ",
//                                 style: TextStyle(
//                                   color: Colors.redAccent,
//                                   fontFamily: "Poppins",
//                                   fontSize: 10,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         margin: EdgeInsets.only(
//                           left: 15,
//                         ),
//                         height: 120,
//                         width: MediaQuery.of(context).size.width / 2.3,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                                 topRight: Radius.circular(30),
//                                 bottomLeft: Radius.circular(10),
//                                 bottomRight: Radius.circular(10),
//                                 topLeft: Radius.circular(
//                                   10,
//                                 )),
//                             color: Color(0xffffffff),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey[200]!,
//                                 spreadRadius: 1,
//                                 blurRadius: 1,
//                                 offset: Offset(
//                                   1,
//                                   2,
//                                 ),
//                               ),
//                             ]),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 150.0),
//                         child: Container(
//                           height: 60,
//                           width: 60,
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               image: AssetImage(
//                                 "images/danadarurat.png",
//                               ),
//                             ),
//                             color: Color(0xffffffff),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey[200]!,
//                                 blurRadius: 1,
//                                 spreadRadius: 1,
//                                 offset: Offset(1, 2),
//                               ),
//                             ],
//                             borderRadius: BorderRadius.circular(
//                               50,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Stack(
//                     children: [
//                       Container(
//                         child: Padding(
//                           padding: const EdgeInsets.only(
//                             top: 25.0,
//                             left: 10,
//                             right: 10,
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Dana Pensiun",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontFamily: "Poppins",
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               Text(
//                                 "3 Reksadana",
//                                 style: TextStyle(
//                                   color: Colors.grey,
//                                   fontFamily: "Poppins",
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 "Rp. 1.806.442",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontFamily: "Poppins",
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               Text(
//                                 "+ Rp. 122.000 (+2.3 %) ",
//                                 style: TextStyle(
//                                   color: Colors.greenAccent,
//                                   fontFamily: "Poppins",
//                                   fontSize: 10,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         margin: EdgeInsets.only(
//                           right: 10,
//                         ),
//                         height: 120,
//                         width: MediaQuery.of(context).size.width / 2.3,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                                 topRight: Radius.circular(30),
//                                 bottomLeft: Radius.circular(10),
//                                 bottomRight: Radius.circular(10),
//                                 topLeft: Radius.circular(
//                                   10,
//                                 )),
//                             color: Color(0xffffffff),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey[200]!,
//                                 spreadRadius: 1,
//                                 blurRadius: 1,
//                                 offset: Offset(
//                                   1,
//                                   2,
//                                 ),
//                               ),
//                             ]),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 120.0),
//                         child: Container(
//                           height: 60,
//                           width: 60,
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               image: AssetImage(
//                                 "images/danapensiun.png",
//                               ),
//                             ),
//                             color: Color(0xffffffff),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey[200]!,
//                                 blurRadius: 1,
//                                 spreadRadius: 1,
//                                 offset: Offset(1, 2),
//                               ),
//                             ],
//                             borderRadius: BorderRadius.circular(
//                               50,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             ListTile(
//               title: Text(
//                 "Pending Order",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontFamily: "Poppins",
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 15.0,
//                 right: 15,
//               ),
//               child: Stack(
//                 children: [
//                   Container(
//                     height: 65,
//                     margin: EdgeInsets.only(
//                       bottom: 20,
//                       left: 0,
//                       right: 0,
//                     ),
//                     width: MediaQuery.of(context).size.width / 1,
//                     decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey[100]!,
//                         spreadRadius: 0.8,
//                         blurRadius: 0.7,
//                         offset: Offset(1, 1),
//                       ),
//                     ]),
//                     child: Row(
//                       children: [
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: Container(
//                             height: 50,
//                             width: 50,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: NetworkImage(
//                                     'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
//                                   ),
//                                   fit: BoxFit.contain),
//                               borderRadius: BorderRadius.circular(50),
//                               border: Border(
//                                 top: BorderSide(
//                                   width: 1.0,
//                                   color: Color(0xff134074),
//                                 ),
//                                 left: BorderSide(
//                                   width: 1.0,
//                                   color: Color(0xff134074),
//                                 ),
//                                 right: BorderSide(
//                                   width: 1.0,
//                                   color: Color(0xff134074),
//                                 ),
//                                 bottom: BorderSide(
//                                   width: 1.0,
//                                   color: Color(0xff134074),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 10.0),
//                           child: Align(
//                             alignment: Alignment.center,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Text(
//                                       "4000 Star Equity",
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontFamily: "Poppins",
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 15),
//                                     ),
//                                     SizedBox(
//                                       width: 8,
//                                     ),
//                                     // syariah(
//                                     //   data[i]['syariah'],
//                                     // ),
//                                   ],
//                                 ),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       height: 25,
//                                       width: 230,
//                                       child: Text(
//                                         "Lorem Ipsum",
//                                         overflow: TextOverflow.ellipsis,
//                                         style: TextStyle(
//                                             color: Colors.grey,
//                                             fontFamily: "Poppins",
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 12),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10.0, right: 8),
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Text(
//                             "",
//                             style: TextStyle(
//                               color: Colors.greenAccent,
//                               fontFamily: "Poppins",
//                               fontSize: 12,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 55,
//                           ),
//                           Text(
//                             "Dana Tabungan",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontFamily: "Poppins",
//                               fontWeight: FontWeight.w600,
//                               fontSize: 14,
//                             ),
//                           ),

//                           // Row(
//                           //   mainAxisAlignment: MainAxisAlignment.end,
//                           //   children: [
//                           //     Text(
//                           //       "Volume :  ",
//                           //       style: TextStyle(
//                           //         color: Colors.black,
//                           //         fontFamily: "Poppins",
//                           //         fontSize: 11,
//                           //         fontWeight: FontWeight.w400,
//                           //       ),
//                           //     ),
//                           //     Text(
//                           //       "Txt",
//                           //       style: TextStyle(
//                           //         color: Colors.black,
//                           //         fontFamily: "Poppins",
//                           //         fontSize: 13,
//                           //         fontWeight: FontWeight.w500,
//                           //       ),
//                           //     ),
//                           //   ],
//                           // ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             ListTile(
//               title: Text("My Funds",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontFamily: "Poppins",
//                     fontWeight: FontWeight.w600,
//                   )),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 15.0,
//                 right: 15,
//               ),
//               child: Stack(
//                 children: [
//                   Container(
//                     height: 65,
//                     margin: EdgeInsets.only(
//                       bottom: 20,
//                       left: 0,
//                       right: 0,
//                     ),
//                     width: MediaQuery.of(context).size.width / 1,
//                     decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey[100]!,
//                         spreadRadius: 0.8,
//                         blurRadius: 0.7,
//                         offset: Offset(1, 1),
//                       ),
//                     ]),
//                     child: Row(
//                       children: [
//                         // Align(
//                         //   alignment: Alignment.centerLeft,
//                         //   child: Container(
//                         //     height: 50,
//                         //     width: 50,
//                         //     decoration: BoxDecoration(
//                         //       image: DecorationImage(
//                         //           image: NetworkImage(
//                         //             'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
//                         //           ),
//                         //           fit: BoxFit.contain),
//                         //       borderRadius: BorderRadius.circular(50),
//                         //       border: Border(
//                         //         top: BorderSide(
//                         //           width: 1.0,
//                         //           color: Color(0xff134074),
//                         //         ),
//                         //         left: BorderSide(
//                         //           width: 1.0,
//                         //           color: Color(0xff134074),
//                         //         ),
//                         //         right: BorderSide(
//                         //           width: 1.0,
//                         //           color: Color(0xff134074),
//                         //         ),
//                         //         bottom: BorderSide(
//                         //           width: 1.0,
//                         //           color: Color(0xff134074),
//                         //         ),
//                         //       ),
//                         //     ),
//                         //   ),
//                         // ),
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 10.0),
//                           child: Align(
//                             alignment: Alignment.center,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Text(
//                                       "Cipta Saham Unggul Syariah",
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontFamily: "Poppins",
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 15),
//                                     ),
//                                     SizedBox(
//                                       width: 8,
//                                     ),
//                                     // syariah(
//                                     //   data[i]['syariah'],
//                                     // ),
//                                   ],
//                                 ),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       height: 25,
//                                       width: 230,
//                                       child: Text(
//                                         "Lorem Ipsum",
//                                         overflow: TextOverflow.ellipsis,
//                                         style: TextStyle(
//                                             color: Colors.grey,
//                                             fontFamily: "Poppins",
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 12),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10.0, right: 8),
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             "Return 3 Tahun",
//                             style: TextStyle(
//                               color: Colors.grey,
//                               fontFamily: "Poppins",
//                               fontSize: 12,
//                               fontWeight: FontWeight.w200,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 55,
//                           ),
//                           Container(
//                             height: 30,
//                             width: 100,
//                             decoration: BoxDecoration(
//                               color: Colors.greenAccent,
//                               borderRadius: BorderRadius.circular(
//                                 10,
//                               ),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 "+ 11.0 %",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: "Poppins",
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                             ),
//                           ),

//                           // Row(
//                           //   mainAxisAlignment: MainAxisAlignment.end,
//                           //   children: [
//                           //     Text(
//                           //       "Volume :  ",
//                           //       style: TextStyle(
//                           //         color: Colors.black,
//                           //         fontFamily: "Poppins",
//                           //         fontSize: 11,
//                           //         fontWeight: FontWeight.w400,
//                           //       ),
//                           //     ),
//                           //     Text(
//                           //       "Txt",
//                           //       style: TextStyle(
//                           //         color: Colors.black,
//                           //         fontFamily: "Poppins",
//                           //         fontSize: 13,
//                           //         fontWeight: FontWeight.w500,
//                           //       ),
//                           //     ),
//                           //   ],
//                           // ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 15.0,
//                 right: 15,
//               ),
//               child: Stack(
//                 children: [
//                   Container(
//                     height: 65,
//                     margin: EdgeInsets.only(
//                       bottom: 20,
//                       left: 0,
//                       right: 0,
//                     ),
//                     width: MediaQuery.of(context).size.width / 1,
//                     decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey[100]!,
//                         spreadRadius: 0.8,
//                         blurRadius: 0.7,
//                         offset: Offset(1, 1),
//                       ),
//                     ]),
//                     child: Row(
//                       children: [
//                         // Align(
//                         //   alignment: Alignment.centerLeft,
//                         //   child: Container(
//                         //     height: 50,
//                         //     width: 50,
//                         //     decoration: BoxDecoration(
//                         //       image: DecorationImage(
//                         //           image: NetworkImage(
//                         //             'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
//                         //           ),
//                         //           fit: BoxFit.contain),
//                         //       borderRadius: BorderRadius.circular(50),
//                         //       border: Border(
//                         //         top: BorderSide(
//                         //           width: 1.0,
//                         //           color: Color(0xff134074),
//                         //         ),
//                         //         left: BorderSide(
//                         //           width: 1.0,
//                         //           color: Color(0xff134074),
//                         //         ),
//                         //         right: BorderSide(
//                         //           width: 1.0,
//                         //           color: Color(0xff134074),
//                         //         ),
//                         //         bottom: BorderSide(
//                         //           width: 1.0,
//                         //           color: Color(0xff134074),
//                         //         ),
//                         //       ),
//                         //     ),
//                         //   ),
//                         // ),
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 10.0),
//                           child: Align(
//                             alignment: Alignment.center,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Text(
//                                       "I AM BUMN Balanced Plus",
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontFamily: "Poppins",
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 15),
//                                     ),
//                                     SizedBox(
//                                       width: 8,
//                                     ),
//                                     // syariah(
//                                     //   data[i]['syariah'],
//                                     // ),
//                                   ],
//                                 ),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       height: 25,
//                                       width: 230,
//                                       child: Text(
//                                         "Lorem Ipsum",
//                                         overflow: TextOverflow.ellipsis,
//                                         style: TextStyle(
//                                             color: Colors.grey,
//                                             fontFamily: "Poppins",
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 12),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10.0, right: 8),
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             "Return 3 Tahun",
//                             style: TextStyle(
//                               color: Colors.grey,
//                               fontFamily: "Poppins",
//                               fontSize: 12,
//                               fontWeight: FontWeight.w200,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 55,
//                           ),
//                           Container(
//                             height: 30,
//                             width: 100,
//                             decoration: BoxDecoration(
//                               color: Colors.redAccent,
//                               borderRadius: BorderRadius.circular(
//                                 10,
//                               ),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 "- 3.40 %",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: "Poppins",
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                             ),
//                           ),

//                           // Row(
//                           //   mainAxisAlignment: MainAxisAlignment.end,
//                           //   children: [
//                           //     Text(
//                           //       "Volume :  ",
//                           //       style: TextStyle(
//                           //         color: Colors.black,
//                           //         fontFamily: "Poppins",
//                           //         fontSize: 11,
//                           //         fontWeight: FontWeight.w400,
//                           //       ),
//                           //     ),
//                           //     Text(
//                           //       "Txt",
//                           //       style: TextStyle(
//                           //         color: Colors.black,
//                           //         fontFamily: "Poppins",
//                           //         fontSize: 13,
//                           //         fontWeight: FontWeight.w500,
//                           //       ),
//                           //     ),
//                           //   ],
//                           // ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
