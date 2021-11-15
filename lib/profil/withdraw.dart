import 'package:flutter/material.dart';
import 'package:zetproject/home/profil.dart';
import 'package:zetproject/textStyle.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({Key? key}) : super(key: key);

  @override
  _WithdrawState createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(
          0xffffffff,
        ),
        title: Text(
          "Cash Withdraw",
          style: TitlePage(),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        elevation: 0,
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
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[200]!,
                      spreadRadius: 2,
                      blurRadius: 8,
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
                height: 35,
                width: MediaQuery.of(context).size.width / 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Dana",
                        style: ProfilTitle(),
                      ),
                      Text(
                        "Rp. 23.500.000",
                        style: ProfilData(),
                      ),
                    ],
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
                    "Informasi akun",
                    style: TitleSaham1(),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Id Akun",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "85247536951",
                            style: ProfilData(),
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
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nama Bank",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "Bank Central Asia",
                            style: ProfilData(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                height: 120,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[200]!,
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(
                        1,
                        2,
                      ),
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
                    "Withdraw Fee",
                    style: TitleSaham1(),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Clearing",
                    style: ProfilTitle(),
                  ),
                  Text(
                    "Rp. 0",
                    style: ProfilData(),
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
                    "RTGS",
                    style: ProfilTitle(),
                  ),
                  Text(
                    "Rp. 0",
                    style: ProfilData(),
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
                    "Overbooking",
                    style: ProfilTitle(),
                  ),
                  Text(
                    "Rp. 0",
                    style: ProfilData(),
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
                    "Nominal Penarikan",
                    style: TitleSaham1(),
                  ),
                  Text(
                    "(T+2)",
                    style: ProfilTitle(),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Rp. 0",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: "Nunito",
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
                    "Keterangan Withdraw",
                    style: TitleSaham1(),
                  ),
                  Text(
                    "",
                    style: ProfilTitle(),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Penarikan saldo RDN dapat dilakukan setelah H+1 pembuatan akun RDN",
                style: SubtitleSaham1(),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Tidak dapat melakukan penarikan saldo pada pukul 22:00 WIB sampai 02:00 WIB",
                style: SubtitleSaham1(),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Minimal penarikan Rp. 10.000",
                style: SubtitleSaham1(),
              ),
              SizedBox(
                height: 8,
              ),
              // Text(
              //   "4. Masukkan angka yang perlu anda bayarkan, lalu pilih benar.",
              //   style: SubtitleSaham1(),
              // ),
              // SizedBox(
              //   height: 8,
              // ),
              // Text(
              //   "5. Transaksi anda selesai, pilih Tidak untuk tidak melanjutkan transaksi lain.",
              //   style: SubtitleSaham1(),
              // ),
              // SizedBox(
              //   height: 8,
              // ),
              // Text(
              //   "Setelah selesai, Invoice ini akan diperbarui secara otomatis dalam 5 menit",
              //   style: SubtitleSaham1(),
              // ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () => _modalBottomSheetMenuBayar(),
                child: Container(
                  child: Center(
                    child: Text(
                      "Tarik Dana",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  height: 55,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                    color: Color(
                      0xff00aa13,
                    ),
                  ),
                ),
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
            height: 315.0,
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
                          Text(
                            "Detail Penarikan",
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
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rekening RDN",
                                style: ProfilTitle(),
                              ),
                              Text(
                                "4551300344",
                                style: ProfilData(),
                              ),
                            ],
                          ),
                          Text(
                            "Ke",
                            style: ProfilTitle(),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Rekening Bank",
                                style: ProfilTitle(),
                              ),
                              Text(
                                "4475211536",
                                style: ProfilData(),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Atas nama",
                        style: ProfilTitle(),
                      ),
                      Text(
                        "Fauzi Ikhsan Fajar Muzaqi",
                        style: ProfilData(),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jumlah Penarikan",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "Rp. 10.000.000",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () => _modalBottomSheetMenuBayar(),
                        child: Container(
                          child: Center(
                            child: Text(
                              "Tarik Dana",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          height: 45,
                          width: MediaQuery.of(context).size.width / 1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                            color: Color(
                              0xff00aa13,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          );
        });
  }
}
