import 'package:flutter/material.dart';
import 'package:zetproject/screen/detailHome/dashboard.dart';
import 'package:zetproject/services/textStyle.dart';
import 'package:page_transition/page_transition.dart';

class Jual extends StatefulWidget {
  const Jual({Key? key}) : super(key: key);

  @override
  _JualState createState() => _JualState();
}

class _JualState extends State<Jual> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = new TabController(vsync: this, length: 2);

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
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        leading: InkWell(
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
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Detail Jual",
          style: TitlePage(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "PGAS",
                        style: ProfilData(),
                      ),
                      Text(
                        "Perusahaan Gas Negara Tbk",
                        style: ProfilTitle(),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "114",
                        style: TitleSaham1(),
                      ),
                      RichText(
                        text: TextSpan(
                          text: '+6  ',
                          style: TextStyle(
                            color: Colors.green,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '(+5,65%)',
                              style: TextStyle(
                                color: Color(
                                  0xff00aa13,
                                ),
                                fontSize: 12,
                                fontFamily: "Nunito",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Divider(
                height: 15,
                color: Colors.grey[300],
                thickness: 2,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Akun",
                style: TitleSaham1(),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nomor Rekening RDN",
                        style: ProfilTitle(),
                      ),
                      Text(
                        "008744622",
                        style: ProfilData(),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Tipe order",
                        style: ProfilTitle(),
                      ),
                      Text(
                        "RG",
                        style: ProfilData(),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama Pemilik",
                    style: ProfilTitle(),
                  ),
                  Text(
                    "Fauzi Ikhsan Fajar Muzaqi",
                    style: ProfilData(),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Order",
                style: TitleSaham1(),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20,
                    top: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Harga",
                            style: ProfilData(),
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2.6,
                            // color: Colors.green,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[300]!,
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(
                                    1,
                                    2,
                                  ),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                                right: 8,
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jumlah Lot",
                            style: ProfilData(),
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2.6,
                            // color: Colors.green,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[300]!,
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(
                                    1,
                                    2,
                                  ),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                                right: 8,
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Lot Dimiliki",
                            style: ProfilData(),
                          ),
                          Text(
                            "1",
                            style: TitlePage(),
                          )
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
                            style: ProfilData(),
                          ),
                          Text(
                            "Rp. 124.000",
                            style: TitlePage(color: Colors.green),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                height: MediaQuery.of(context).size.height / 3.2,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300]!,
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(
                        1,
                        2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Colors.black,
                labelColor: Colors.red,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text(
                      "Running Trade",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontFamily: "Nunito"),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Order Book",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontFamily: "Nunito"),
                    ),
                  ),
                ],
                controller: _controller,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.2,
                child: TabBarView(
                  controller: _controller,
                  children: [
                    Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                    )),
                    Container(
                      child: Text("DUAA"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
