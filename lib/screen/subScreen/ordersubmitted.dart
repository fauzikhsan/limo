import 'package:flutter/material.dart';
import 'package:zetproject/screen/home/bottom.dart';
import 'package:zetproject/services/textStyle.dart';

class OrderSubmitted extends StatefulWidget {
  const OrderSubmitted({Key? key}) : super(key: key);

  @override
  _OrderSubmittedState createState() => _OrderSubmittedState();
}

class _OrderSubmittedState extends State<OrderSubmitted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 100.0,
                  left: 25,
                  right: 0,
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.cancel,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Batalkan",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    height: 45,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff00aa13),
                      ),
                      color: Color(
                        0xffffffff,
                      ),
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 100.0,
                  left: 0,
                  right: 25,
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Modifikasi",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    height: 45,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff00aa13),
                      ),
                      color: Color(
                        0xffffffff,
                      ),
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
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25.0,
              right: 25,
              left: 25,
              top: 15,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(
                        displayname: '',
                      ),
                    ),
                  );
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "Selesai",
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
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 150.0,
                right: 25,
                left: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "images/nodata.png",
                      scale: 7,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Selamat, Pembelian Berhasil",
                    style: ProfilTitle(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Beli 500 Lot PGAS",
                    style: ProfilData(),
                  ),
                  Text(
                    "0/100",
                    style: ProfilData(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
