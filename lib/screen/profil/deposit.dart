import 'package:flutter/material.dart';
import 'package:zetproject/services/textStyle.dart';

import 'package:expansion_tile_card/expansion_tile_card.dart';

class Deposit extends StatefulWidget {
  const Deposit({Key? key}) : super(key: key);

  @override
  _DepositState createState() => _DepositState();
}

class _DepositState extends State<Deposit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(
          0xffffffff,
        ),
        title: Text(
          "Deposit",
          style: TitlePage(),
        ),
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 25,
            right: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              // SizedBox(
              //   height: 15,
              // ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nomor Rekening RDN",
                    style: ProfilTitle(),
                  ),
                  Text(
                    "452257869",
                    style: ProfilData(),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 15,
              // ),
              Divider(
                color: Colors.grey[600],
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
              Text(
                "Agar tidak dikenakan biaya transfer antar bank, silakan top up menggunakan akun Bank/Dana/OY!/Flip/Jenius (Syarat dan ketentuan berlaku)",
                style: SubtitleSaham1(),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Deposit yang dilakukan setelah jam 21:30 - 01:30 WIB akan masuk setelah 01:30 WIB",
                style: SubtitleSaham1(),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Silahkan hubungi team kami jika deposit tidak kunjung masuk diatas 30 menit agar kami dapat menghubungi pihak bank untuk melakukan pemeriksaan",
                style: SubtitleSaham1(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Cara Pembayaran",
                style: Parent(),
              ),
              SizedBox(
                height: 20,
              ),
              ExpansionTileCard(
                expandedTextColor: Color(0xff00aa13),
                title: Text(
                  "ATM BCA",
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 15,
                      top: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1. Masukkan Kartu ATM dan PIN BCA anda",
                          style: SubtitleSaham1(),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "2. Pilih Transaksi Lainnya. Pilih Transfer, pilih ke BCA Virtual Account",
                          style: SubtitleSaham1(),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "3. Masukkan nomor Virtual Account",
                          style: SubtitleSaham1(),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "4. Masukkan angka yang perlu anda bayarkan, lalu pilih benar.",
                          style: SubtitleSaham1(),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "5. Transaksi anda selesai, pilih Tidak untuk tidak melanjutkan transaksi lain.",
                          style: SubtitleSaham1(),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Setelah selesai, Invoice ini akan diperbarui secara otomatis dalam 5 menit",
                          style: SubtitleSaham1(),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ExpansionTileCard(
                expandedTextColor: Color(0xff00aa13),
                title: Text(
                  "M-Banking BCA",
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 15,
                      top: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1. Masukkan Kartu ATM dan PIN BCA anda",
                          style: SubtitleSaham1(),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "2. Pilih Transaksi Lainnya. Pilih Transfer, pilih ke BCA Virtual Account",
                          style: SubtitleSaham1(),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "3. Masukkan nomor Virtual Account",
                          style: SubtitleSaham1(),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "4. Masukkan angka yang perlu anda bayarkan, lalu pilih benar.",
                          style: SubtitleSaham1(),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "5. Transaksi anda selesai, pilih Tidak untuk tidak melanjutkan transaksi lain.",
                          style: SubtitleSaham1(),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Setelah selesai, Invoice ini akan diperbarui secara otomatis dalam 5 menit",
                          style: SubtitleSaham1(),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _modalBottomSheetMenuBCA() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
            height: 350.0,
            color: Colors.transparent, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: new Container(
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0))),
                child: new Center(
                  child: new Text("This is a modal sheet"),
                )),
          );
        });
  }
}
