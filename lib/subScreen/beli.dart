import 'package:flutter/material.dart';
import 'package:zetproject/textStyle.dart';
import 'package:intl/intl.dart';

class Beli extends StatefulWidget {
  const Beli({Key? key}) : super(key: key);

  @override
  _BeliState createState() => _BeliState();
}

class _BeliState extends State<Beli> {
  TextEditingController _txtttl = TextEditingController();

  DateTime _currentdate = new DateTime.now();
  Future<Null> _selectdate(BuildContext context) async {
    final DateTime? _seldate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime.now(),
        builder: (context, child) {
          return SingleChildScrollView(
            child: child,
          );
        });
    if (_seldate != null) {
      setState(() {
        _currentdate = _seldate;
        print(_currentdate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String _formattedate = new DateFormat.yMMMd().format(_currentdate);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        title: Text(
          "Detail",
          style: TitlePage(),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 15,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            right: 25,
            top: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "PGAS",
                style: NamaSaham(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Perusahaan Gas Negara",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "2.080",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: '80',
                          style: TextStyle(
                            color: Color(
                              0xff00aa13,
                            ),
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' +(5,65%)',
                              style: TextStyle(
                                color: Color(
                                  0xff00aa13,
                                ),
                                fontSize: 13,
                                fontFamily: "Nunito",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  text: 'Harga Terakhir',
                  style: LihatSemua(),
                  children: <TextSpan>[
                    TextSpan(
                      text: '  1405 +65(5,65%)',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: "Nunito",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           "Periode awal",
              //           style: TextStyle(
              //             color: Colors.black,
              //             fontFamily: "Nunito",
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         _currentdate == null
              //             ? ElevatedButton(
              //                 child: Text(
              //                   "Atur tanggal",
              //                   style: TextStyle(
              //                     color: Color(
              //                       0xfff50000,
              //                     ),
              //                     fontFamily: "Poppins",
              //                   ),
              //                 ),
              //                 onPressed: () {
              //                   _selectdate(context);
              //                   print(_formattedate);
              //                   // showDatePicker(
              //                   //   context: context,
              //                   //   initialDate: DateTime.now(),
              //                   //   firstDate: DateTime(1970),
              //                   //   lastDate: DateTime.now(),
              //                   // ).then(
              //                   //   (date) {
              //                   //     setState(() {
              //                   //       _currentdate = date;
              //                   //     });
              //                   //   },
              //                   // );
              //                 },
              //               )
              //             : InkWell(
              //                 onTap: () {
              //                   _selectdate(context);
              //                   print(_formattedate);
              //                 },
              //                 child: Container(
              //                   height: 50,
              //                   width: MediaQuery.of(context).size.width / 2.5,
              //                   decoration: BoxDecoration(
              //                     borderRadius: BorderRadius.circular(
              //                       5,
              //                     ),
              //                     color: Colors.white,
              //                     boxShadow: [
              //                       BoxShadow(
              //                         color: Colors.grey[300]!,
              //                         spreadRadius: 1,
              //                         blurRadius: 1,
              //                         offset: Offset(
              //                           1,
              //                           2,
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                   child: Padding(
              //                     padding: const EdgeInsets.all(8.0),
              //                     child: Row(
              //                       mainAxisAlignment:
              //                           MainAxisAlignment.spaceBetween,
              //                       children: [
              //                         Text(
              //                           _formattedate,
              //                           style: TextStyle(
              //                             color: Colors.black,
              //                             fontFamily: "Nunito",
              //                             fontSize: 14,
              //                             fontWeight: FontWeight.w600,
              //                           ),
              //                         ),
              //                         Icon(
              //                           Icons.date_range_outlined,
              //                           color: Color(0xff00aa13),
              //                         )
              //                       ],
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //       ],
              //     ),
              //     SizedBox(
              //       height: 25,
              //     ),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           "Periode akhir",
              //           style: TextStyle(
              //             color: Colors.black,
              //             fontFamily: "Nunito",
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         _currentdate == null
              //             ? ElevatedButton(
              //                 child: Text(
              //                   "Atur tanggal",
              //                   style: TextStyle(
              //                     color: Color(
              //                       0xfff50000,
              //                     ),
              //                     fontFamily: "Poppins",
              //                   ),
              //                 ),
              //                 onPressed: () {
              //                   _selectdate(context);
              //                   print(_formattedate);
              //                   // showDatePicker(
              //                   //   context: context,
              //                   //   initialDate: DateTime.now(),
              //                   //   firstDate: DateTime(1970),
              //                   //   lastDate: DateTime.now(),
              //                   // ).then(
              //                   //   (date) {
              //                   //     setState(() {
              //                   //       _currentdate = date;
              //                   //     });
              //                   //   },
              //                   // );
              //                 },
              //               )
              //             : InkWell(
              //                 onTap: () {
              //                   _selectdate(context);
              //                   print(_formattedate);
              //                 },
              //                 child: Container(
              //                   height: 50,
              //                   width: MediaQuery.of(context).size.width / 2.5,
              //                   decoration: BoxDecoration(
              //                     borderRadius: BorderRadius.circular(
              //                       5,
              //                     ),
              //                     color: Colors.white,
              //                     boxShadow: [
              //                       BoxShadow(
              //                         color: Colors.grey[300]!,
              //                         spreadRadius: 1,
              //                         blurRadius: 1,
              //                         offset: Offset(
              //                           1,
              //                           2,
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                   child: Padding(
              //                     padding: const EdgeInsets.all(8.0),
              //                     child: Row(
              //                       mainAxisAlignment:
              //                           MainAxisAlignment.spaceBetween,
              //                       children: [
              //                         Text(
              //                           _formattedate,
              //                           style: TextStyle(
              //                             color: Colors.black,
              //                             fontFamily: "Nunito",
              //                             fontSize: 14,
              //                             fontWeight: FontWeight.w600,
              //                           ),
              //                         ),
              //                         Icon(
              //                           Icons.date_range_outlined,
              //                           color: Color(0xff00aa13),
              //                         )
              //                       ],
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //       ],
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 25,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Syarat Auto Order",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _currentdate == null
                          ? ElevatedButton(
                              child: Text(
                                "Atur tanggal",
                                style: TextStyle(
                                  color: Color(
                                    0xfff50000,
                                  ),
                                  fontFamily: "Poppins",
                                ),
                              ),
                              onPressed: () {
                                _selectdate(context);
                                print(_formattedate);
                                // showDatePicker(
                                //   context: context,
                                //   initialDate: DateTime.now(),
                                //   firstDate: DateTime(1970),
                                //   lastDate: DateTime.now(),
                                // ).then(
                                //   (date) {
                                //     setState(() {
                                //       _currentdate = date;
                                //     });
                                //   },
                                // );
                              },
                            )
                          : InkWell(
                              onTap: () {
                                _selectdate(context);
                                print(_formattedate);
                              },
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width / 2.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    5,
                                  ),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[300]!,
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                        1,
                                        2,
                                      ),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Harga",
                                        // _formattedate,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Nunito",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      // Icon(
                                      //   Icons.date_range_outlined,
                                      //   color: Color(0xff00aa13),
                                      // )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "",
                        style: Parent(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _currentdate == null
                          ? ElevatedButton(
                              child: Text(
                                "Atur tanggal",
                                style: TextStyle(
                                  color: Color(
                                    0xfff50000,
                                  ),
                                  fontFamily: "Poppins",
                                ),
                              ),
                              onPressed: () {
                                _selectdate(context);
                                print(_formattedate);
                                // showDatePicker(
                                //   context: context,
                                //   initialDate: DateTime.now(),
                                //   firstDate: DateTime(1970),
                                //   lastDate: DateTime.now(),
                                // ).then(
                                //   (date) {
                                //     setState(() {
                                //       _currentdate = date;
                                //     });
                                //   },
                                // );
                              },
                            )
                          : InkWell(
                              onTap: () {
                                _selectdate(context);
                                print(_formattedate);
                              },
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width / 2.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    5,
                                  ),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[300]!,
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                        1,
                                        2,
                                      ),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "2.080",
                                        // _formattedate,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Nunito",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      // Icon(
                                      //   Icons.date_range_outlined,
                                      //   color: Color(0xff00aa13),
                                      // )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Pengaturan Order",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Harga",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Nunito",
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300]!,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(
                            1,
                            2,
                          ),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "15.000"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Lot",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Nunito",
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300]!,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(
                            1,
                            2,
                          ),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "15"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Nunito",
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Rp. 8.000.000",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Beli Order",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                height: 45,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  color: Color(0xff00aa13),
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
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
                height: 25,
              ),

              Row(
                children: [
                  Text(
                    "Board",
                    style: Parent(),
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
                      Text("#"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "110",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "127",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "96",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "77",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "52",
                        style: BoardBeli(),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("BVol"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "6.536",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "8.102",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "10.433",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "6.332",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "7.667",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bid"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "2070",
                        style: Bid(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "2060",
                        style: Bid(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "2050",
                        style: Bid(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "2040",
                        style: Bid(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "2030",
                        style: Bid(),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Offer"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "2080",
                        style: Bid(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "2090",
                        style: Bid(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "2100",
                        style: Bid(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "2105",
                        style: Bid(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "2090",
                        style: Bid(),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("OVol"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "6.464",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "12.885",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "7.454",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "8.867",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "23.995",
                        style: BoardBeli(),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("#"),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "43",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "122",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "421",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "212",
                        style: BoardBeli(),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "24",
                        style: BoardBeli(),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
