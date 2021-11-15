import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zetproject/profil/deposit.dart';
import 'package:zetproject/profil/history.dart';
import 'package:zetproject/profil/infoAkun.dart';
import 'package:zetproject/profil/withdraw.dart';

import '../textStyle.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            right: 25,
            top: 45,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(
                          "images/khabib.jpeg",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                  ),
                  Text(
                    "Ganti foto",
                    style: TextStyle(
                        color: Colors.grey, fontSize: 13, fontFamily: "Nunito"),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Fauzi Ikhsan Fajar Muzaqi",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: "Nunito",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                height: 10,
                color: Colors.grey[800],
              ),
              SizedBox(
                height: 15,
              ),
              // Container(
              //   child: Padding(
              //     padding: const EdgeInsets.only(
              //       left: 8.0,
              //       right: 8,
              //       top: 3,
              //     ),
              //     child: Text(
              //       "Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak.",
              //       maxLines: 4,
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontFamily: "Nunito",
              //         fontSize: 12,
              //         fontWeight: FontWeight.w600,
              //       ),
              //     ),
              //   ),
              //   height: 80,
              //   width: MediaQuery.of(context).size.width / 1,
              //   decoration: BoxDecoration(
              //     color: Colors.greenAccent[200],
              //     borderRadius: BorderRadius.circular(
              //       5,
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Divider(
              //   height: 10,
              //   color: Colors.grey[800],
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    top: 15,
                    right: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Saldo RDN",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: "Nunito",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Rp. 24.000.000",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Nunito",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Return",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: "Nunito",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Rp. 1.764.000",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Nunito",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Power Buy",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: "Nunito",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Rp. 1.764.000",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Nunito",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          Icon(
                            Icons.remove_red_eye_outlined,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Deposit(),
                                ),
                              );
                            },
                            child: Container(
                              child: Center(
                                child: Text(
                                  "Deposit",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Nunito",
                                  ),
                                ),
                              ),
                              height: 25,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Withdraw(),
                                ),
                              );
                            },
                            child: Container(
                              child: Center(
                                child: Text(
                                  "Withdraw",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Nunito",
                                  ),
                                ),
                              ),
                              height: 25,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => History(),
                              //   ),
                              // );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => History(),
                                ),
                              );
                            },
                            child: Container(
                              child: Center(
                                child: Text(
                                  "Riwayat",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Nunito",
                                  ),
                                ),
                              ),
                              height: 25,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  color: Color(0xff00aa13),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
              // Container(
              //   height: MediaQuery.of(context).size.height / 4,
              //   width: MediaQuery.of(context).size.width / 1,
              // child: Padding(
              //   padding: const EdgeInsets.only(
              //     left: 15.0,
              //     top: 15,
              //     right: 15,
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 "Saldo RDN",
              //                 style: TextStyle(
              //                   color: Colors.black,
              //                   fontSize: 14,
              //                   fontFamily: "Nunito",
              //                   fontWeight: FontWeight.w600,
              //                 ),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 "Rp. 24.000.000",
              //                 style: Parent(),
              //               )
              //             ],
              //           ),
              //           Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 "Return",
              //                 style: TextStyle(
              //                   color: Colors.black,
              //                   fontSize: 14,
              //                   fontFamily: "Nunito",
              //                   fontWeight: FontWeight.w600,
              //                 ),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 "Rp. 1.764.000",
              //                 style: Parent(),
              //               )
              //             ],
              //           ),
              //         ],
              //       ),
              //       SizedBox(
              //         height: 15,
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 "Power Buy",
              //                 style: TextStyle(
              //                   color: Colors.black,
              //                   fontSize: 14,
              //                   fontFamily: "Nunito",
              //                   fontWeight: FontWeight.w600,
              //                 ),
              //               ),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text(
              //                 "Rp. 1.764.000",
              //                 style: Parent(),
              //               )
              //             ],
              //           ),
              //           Icon(
              //             Icons.remove_red_eye_outlined,
              //           ),
              //         ],
              //       ),
              //       SizedBox(
              //         height: 15,
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           InkWell(
              //             onTap: () {
              //               Navigator.push(
              //                 context,
              //                 MaterialPageRoute(
              //                   builder: (context) => Deposit(),
              //                 ),
              //               );
              //             },
              //             child: Container(
              //               child: Center(
              //                 child: Text(
              //                   "Deposit",
              //                   style: TextStyle(
              //                     color: Colors.black,
              //                     fontFamily: "Nunito",
              //                   ),
              //                 ),
              //               ),
              //               height: 25,
              //               width: 100,
              //               decoration: BoxDecoration(
              //                 color: Colors.white,
              //                 borderRadius: BorderRadius.circular(8),
              //                 border: Border.all(
              //                   color: Color(
              //                     0xff00aa13,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //           InkWell(
              //             onTap: () {
              //               Navigator.push(
              //                 context,
              //                 MaterialPageRoute(
              //                   builder: (context) => Withdraw(),
              //                 ),
              //               );
              //             },
              //             child: Container(
              //               child: Center(
              //                 child: Text(
              //                   "Withdraw",
              //                   style: TextStyle(
              //                     color: Colors.white,
              //                     fontFamily: "Nunito",
              //                   ),
              //                 ),
              //               ),
              //               height: 25,
              //               width: 100,
              //               decoration: BoxDecoration(
              //                 color: Colors.green,
              //                 borderRadius: BorderRadius.circular(8),
              //               ),
              //             ),
              //           ),
              //           InkWell(
              //             onTap: () {
              //               Navigator.push(
              //                 context,
              //                 MaterialPageRoute(
              //                   builder: (context) => History(),
              //                 ),
              //               );
              //             },
              //             child: Container(
              //               child: Center(
              //                 child: Text(
              //                   "Riwayat",
              //                   style: TextStyle(
              //                     color: Colors.white,
              //                     fontFamily: "Nunito",
              //                   ),
              //                 ),
              //               ),
              //               height: 25,
              //               width: 100,
              //               decoration: BoxDecoration(
              //                 color: Color(
              //                   0xff00aa13,
              //                 ),
              //                 borderRadius: BorderRadius.circular(8),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              //   ),
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey[300]!,
              //         spreadRadius: 3,
              //         blurRadius: 8,
              //         offset: Offset(
              //           1,
              //           1,
              //         ),
              //       ),
              //     ],
              //     borderRadius: BorderRadius.circular(
              //       10,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 35,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15,
                    top: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem Ipsum Dolmen Sit Amet!",
                        style: Parent(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Lorem ipsum dolmen soft warp int max lines textoverflow textalign",
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                ),
              ),

              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "General",
                    style: Parent(),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.info_outlined,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Detail Akun",
                              style: ProfilData(),
                            ),
                            Text(
                              "Profil, Summary, Margin,",
                              style: SubtitleSaham1(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                height: 65,
                width: MediaQuery.of(context).size.height / 1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => History(),
                    ),
                  );
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.history,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Riwayat Transaksi",
                                style: ProfilData(),
                              ),
                              Text(
                                "Pending, Order, Transfers & More",
                                style: SubtitleSaham1(),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  height: 65,
                  width: MediaQuery.of(context).size.height / 1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey[300]!,
                    ),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.support_agent_outlined,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Support",
                              style: ProfilData(),
                            ),
                            Text(
                              "FAQs, and Contact us",
                              style: SubtitleSaham1(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                height: 65,
                width: MediaQuery.of(context).size.height / 1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.feedback_outlined,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Feedback",
                              style: ProfilData(),
                            ),
                            Text(
                              "Let us know what you think,",
                              style: SubtitleSaham1(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                height: 65,
                width: MediaQuery.of(context).size.height / 1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey[300]!,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => InfoAkun(),
              //       ),
              //     );
              //   },
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       Container(
              //         height: 40,
              //         width: 40,
              //         child: Center(
              //           child: Icon(
              //             Icons.info_outline,
              //             color: Colors.greenAccent,
              //           ),
              //         ),
              //         decoration: BoxDecoration(
              //           color: Colors.white,
              //           boxShadow: [
              //             BoxShadow(
              //               color: Colors.grey[200]!,
              //               spreadRadius: 1,
              //               blurRadius: 1,
              //               offset: Offset(1, 2),
              //             ),
              //           ],
              //           borderRadius: BorderRadius.circular(50),
              //         ),
              //       ),
              //       SizedBox(
              //         width: 15,
              //       ),
              //       Text(
              //         "Info Akun",
              //         style: TextStyle(
              //           color: Colors.black,
              //           fontSize: 14,
              //           fontFamily: "Nunito",
              //           fontWeight: FontWeight.w600,
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 15,
              // ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Container(
              //       height: 40,
              //       width: 40,
              //       child: Center(
              //         child: Icon(
              //           Icons.report_gmailerrorred_rounded,
              //           color: Colors.greenAccent,
              //         ),
              //       ),
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey[200]!,
              //             spreadRadius: 1,
              //             blurRadius: 1,
              //             offset: Offset(1, 2),
              //           ),
              //         ],
              //         borderRadius: BorderRadius.circular(50),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 15,
              //     ),
              //     Text(
              //       "Laporan Transaksi",
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 14,
              //         fontFamily: "Nunito",
              //         fontWeight: FontWeight.w600,
              //       ),
              //     )
              //   ],
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Container(
              //       height: 40,
              //       width: 40,
              //       child: Center(
              //         child: Icon(
              //           Icons.report_problem_outlined,
              //           color: Colors.greenAccent,
              //         ),
              //       ),
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey[200]!,
              //             spreadRadius: 1,
              //             blurRadius: 1,
              //             offset: Offset(1, 2),
              //           ),
              //         ],
              //         borderRadius: BorderRadius.circular(50),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 15,
              //     ),
              //     Text(
              //       "Laporan Bulanan",
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 14,
              //         fontFamily: "Nunito",
              //         fontWeight: FontWeight.w600,
              //       ),
              //     )
              //   ],
              // ),

              // SizedBox(
              //   height: 25,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       "Lainnya",
              //       style: Parent(),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Container(
              //       height: 40,
              //       width: 40,
              //       child: Center(
              //         child: Icon(
              //           Icons.mail_outline,
              //           color: Colors.greenAccent,
              //         ),
              //       ),
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey[200]!,
              //             spreadRadius: 1,
              //             blurRadius: 1,
              //             offset: Offset(1, 2),
              //           ),
              //         ],
              //         borderRadius: BorderRadius.circular(50),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 15,
              //     ),
              //     Text(
              //       "Bantuan",
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 14,
              //         fontFamily: "Nunito",
              //         fontWeight: FontWeight.w600,
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Container(
              //       height: 40,
              //       width: 40,
              //       child: Center(
              //         child: Icon(
              //           Icons.question_answer_outlined,
              //           color: Colors.greenAccent,
              //         ),
              //       ),
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey[200]!,
              //             spreadRadius: 1,
              //             blurRadius: 1,
              //             offset: Offset(1, 2),
              //           ),
              //         ],
              //         borderRadius: BorderRadius.circular(50),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 15,
              //     ),
              //     Text(
              //       "FAQ",
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 14,
              //         fontFamily: "Nunito",
              //         fontWeight: FontWeight.w600,
              //       ),
              //     )
              //   ],
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Container(
              //       height: 40,
              //       width: 40,
              //       child: Center(
              //         child: Icon(
              //           Icons.report_gmailerrorred,
              //           color: Colors.greenAccent,
              //         ),
              //       ),
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey[200]!,
              //             spreadRadius: 1,
              //             blurRadius: 1,
              //             offset: Offset(1, 2),
              //           ),
              //         ],
              //         borderRadius: BorderRadius.circular(50),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 15,
              //     ),
              //     Text(
              //       "Terms And Condition",
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 14,
              //         fontFamily: "Nunito",
              //         fontWeight: FontWeight.w600,
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Container(
              //       height: 40,
              //       width: 40,
              //       child: Center(
              //         child: Icon(
              //           Icons.logout,
              //           color: Colors.greenAccent,
              //         ),
              //       ),
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey[200]!,
              //             spreadRadius: 1,
              //             blurRadius: 1,
              //             offset: Offset(1, 2),
              //           ),
              //         ],
              //         borderRadius: BorderRadius.circular(50),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 15,
              //     ),
              //     Text(
              //       "Log Out",
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 14,
              //         fontFamily: "Nunito",
              //         fontWeight: FontWeight.w600,
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 35,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}