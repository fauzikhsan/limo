import 'dart:convert';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zetproject/screen/detailHome/dashboard.dart';
import 'package:zetproject/screen/models.dart' as apitetra;

import '../../services/textStyle.dart';

String kode = '';

class TrendFollowing extends StatefulWidget {
  @override
  _TrendFollowingState createState() => _TrendFollowingState();
}

class _TrendFollowingState extends State<TrendFollowing> {
  void initState() {
    super.initState();
    this.getJSONData();
  }

  var applepay;
  var loading = false;
  var dataJSON;
  Future<String> getJSONData() async {
    // WidgetsFlutterBinding.ensureInitialized();
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // var ambiluid = prefs.getString('uid');
    var ambiluid = "9898";
    //print(ambiluid);
    if (this.mounted) {
      setState(() {
        loading = false;
      });
    }
    var response = await http.get(
      Uri.https(
        apitetra.domain,
        '/screener/ultimate',
        {
          "id": apitetra.idapi,
          "key": apitetra.keyapi,
          "uid": ambiluid,
          "screener": 'cd20',
        },
      ),
    );
    //print(response.body);
    var convertDataToJson = json.decode(response.body);

    if (response.statusCode == 200) {
      if (this.mounted) {
        setState(() {
          applepay = convertDataToJson['applepay'];
          akses = convertDataToJson['akses'];
          return data = convertDataToJson['rekomen'];
        });
      }
    } else {
      throw Text('Failed to load album');
    }

    loading = false;
    return "";
  }

  late List data = [];
  syariah(syariah) {
    if (syariah == '1') {
      return Container(
        height: 20,
        width: 45,
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(
            5,
          ),
        ),
        child: Center(
          child: Text(
            "Syariah",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 10),
          ),
        ),
      );
    } else {
      return Container(
        height: 20,
        width: 45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            5,
          ),
        ),
        child: Center(
          child: Text(
            "",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 10),
          ),
        ),
      );
    }
  }

  changecolor(String trendclass) {
    if (trendclass == 'red') {
      return Colors.red;
    } else if (trendclass == '') {
      return Color(0xff134074);
    } else if (trendclass == 'green') {
      return Colors.green;
    } else if (trendclass == 'grey') {
      return Colors.grey;
    } else if (trendclass == 'blue') {
      return Colors.white;
    }
  }

  aksesTrendFollowing(akses) {
    if (akses == '2') {
      return Center(
        child: SpinKitChasingDots(
          color: Color(
            0xff134074,
          ),
        ),
      );
    }
    if (akses == "0") {
      return loading
          ? SpinKitFadingCube(
              color: Color(0xff134074),
            )
          : Stack(
              children: [
                ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dashboard(
                              kodesaham: data[i]['kode'],
                              route: 'Screener',
                              halaman: '',
                            ),
                            settings: RouteSettings(
                              arguments: data[i],
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 75,
                            margin: EdgeInsets.only(
                              bottom: 15,
                              left: 25,
                              right: 25,
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
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                                right: 8,
                              ),
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
                                              "https://dev-api.tetraxchange.id/upload/idx/" +
                                                  data[i]['kode'] +
                                                  ".jpg",
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
                                    padding: const EdgeInsets.only(top: 18.0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                data[i]['kode'],
                                                style: TextStyle(
                                                    color: Color(0xff134074),
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              syariah(
                                                data[i]['syariah'],
                                              ),
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
                                                  data[i]['nama'],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.w600,
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
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, right: 30),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    data[i]['harga'],
                                    style: TextStyle(
                                        color: changecolor(
                                          data[i]['changecolor'],
                                        ),
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "${data[i]["tanda"]}${data[i]['point']}  (${data[i]['change']}%)",
                                    style: TextStyle(
                                      color: changecolor(
                                        data[i]['changecolor'],
                                      ),
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
                                  //       NumberFormat.compactCurrency(
                                  //         decimalDigits: 2,
                                  //         symbol: '',
                                  //       ).format(
                                  //         int.parse(
                                  //           "${data[i]['volume']}",
                                  //         ),
                                  //       ),
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
                    );
                  },
                ),
                // Container(
                //   height: 80,
                //   width: MediaQuery.of(context).size.width / 1,
                //   decoration: BoxDecoration(
                //     color: Colors.transparent,
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 80.0),
                //   child: Container(
                //     height: 600,
                //     width: MediaQuery.of(context).size.width / 1,
                //     decoration:
                //         BoxDecoration(color: Colors.white60.withOpacity(0.9)),
                //     child: Stack(
                //       children: [
                //         // ClipRect(
                //         //   child: BackdropFilter(
                //         //     filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                //         //     child: Container(
                //         //       color: Colors.white.withOpacity(0.5),
                //         //     ),
                //         //   ),
                //         // ),
                //         // Padding(
                //         //   padding: const EdgeInsets.only(
                //         //     top: 25.0,
                //         //     left: 30,
                //         //     right: 30,
                //         //   ),
                //         //   child: Center(
                //         //     child: Column(
                //         //       crossAxisAlignment: CrossAxisAlignment.center,
                //         //       children: [
                //         //         Icon(
                //         //           CupertinoIcons.lock,
                //         //           color: Color(0xff134074),
                //         //           size: 35,
                //         //         ),
                //         //         SizedBox(
                //         //           height: 25,
                //         //         ),
                //         //         Text(
                //         //           "Cross Down MA20",
                //         //           style: TextStyle(
                //         //             color: Color(0xff134074),
                //         //             fontFamily: "Poppins",
                //         //             fontWeight: FontWeight.bold,
                //         //           ),
                //         //         ),
                //         //         SizedBox(
                //         //           height: 25,
                //         //         ),
                //         //         Text(
                //         //           "Kondisi saat garis MA20 candle terakhir closing",
                //         //           style: TextStyle(
                //         //             color: Colors.black,
                //         //             fontFamily: "Poppins",
                //         //             fontWeight: FontWeight.w500,
                //         //           ),
                //         //           maxLines: 3,
                //         //         ),
                //         //         Text(
                //         //           "memotong MA20 ke bawah. Kondisi ini dapat",
                //         //           style: TextStyle(
                //         //             color: Colors.black,
                //         //             fontFamily: "Poppins",
                //         //             fontWeight: FontWeight.w500,
                //         //           ),
                //         //         ),
                //         //         Text(
                //         //           "mengindikasikan adanya potensi",
                //         //           style: TextStyle(
                //         //             color: Colors.black,
                //         //             fontFamily: "Poppins",
                //         //             fontWeight: FontWeight.w500,
                //         //           ),
                //         //         ),
                //         //         Text(
                //         //           "penurunan saham.",
                //         //           style: TextStyle(
                //         //             color: Colors.black,
                //         //             fontFamily: "Poppins",
                //         //             fontWeight: FontWeight.w500,
                //         //           ),
                //         //         ),
                //         //         SizedBox(
                //         //           height: 25,
                //         //         ),
                //         //         InkWell(
                //         //           onTap: () {
                //         //             // Navigator.push(
                //         //             //     context,
                //         //             //     MaterialPageRoute(
                //         //             //       builder: (context) => Langganan(
                //         //             //         route: 'nobar',
                //         //             //       ),
                //         //             //     ));
                //         //           },
                //         //           child: Text(
                //         //             "Berlangganan",
                //         //             style: TextStyle(
                //         //               fontFamily: "Poppins",
                //         //               fontWeight: FontWeight.w600,
                //         //               color: Color(0xff134074),
                //         //             ),
                //         //           ),
                //         //         ),
                //         //       ],
                //         //     ),
                //         //   ),
                //         // ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            );
    } else {
      return loading
          ? SpinKitFadingCube(
              color: Color(0xff134074),
            )
          : Stack(
              children: [
                ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dashboard(
                              kodesaham: data[i]['kode'],
                              route: 'Screener',
                              halaman: '',
                            ),
                            settings: RouteSettings(
                              arguments: data[i],
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 75,
                            margin: EdgeInsets.only(
                              bottom: 20,
                              left: 15,
                              right: 15,
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
                                            "https://dev-api.tetraxchange.id/upload/idx/" +
                                                data[i]['kode'] +
                                                ".jpg",
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
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              data[i]['kode'],
                                              style: TextStyle(
                                                  color: Color(0xff134074),
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            syariah(
                                              data[i]['syariah'],
                                            ),
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
                                                data[i]['nama'],
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
                            padding:
                                const EdgeInsets.only(top: 10.0, right: 25),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    data[i]['harga'],
                                    style: TextStyle(
                                        color: changecolor(
                                          data[i]['changecolor'],
                                        ),
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "${data[i]["tanda"]}${data[i]['point']}  (${data[i]['change']}%)",
                                    style: TextStyle(
                                      color: changecolor(
                                        data[i]['changecolor'],
                                      ),
                                      fontFamily: "Poppins",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Volume :  ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Poppins",
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        NumberFormat.compactCurrency(
                                          decimalDigits: 2,
                                          symbol: '',
                                        ).format(
                                          int.parse(
                                            "${data[i]['volume']}",
                                          ),
                                        ),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Poppins",
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
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
                    );
                  },
                ),
              ],
            );
    }
  }

  var akses = '2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Trend Following",
          style: TitlePage(),
        ),
      ),
      body: aksesTrendFollowing(akses),
    );
  }
}

class ShimmerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Shimmer.fromColors(
              highlightColor: Colors.white,
              baseColor: Colors.grey[300]!,
              child: ShimmerLayout(),
            ),
          );
        },
      ),
    );
  }
}

class ShimmerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerWidth = 400;
    double containerHeight = 50;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 50,
            width: 400,
            color: Colors.grey[300],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: containerHeight,
                width: containerWidth,
                color: Colors.grey,
              ),
              SizedBox(height: 5),
              Container(
                height: containerHeight,
                width: containerWidth,
                color: Colors.grey,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: containerHeight,
                width: containerWidth,
                color: Colors.grey,
              ),
            ],
          )
        ],
      ),
    );
  }
}
