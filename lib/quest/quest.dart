import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:zetproject/logindll/signInemail.dart';

class Quest extends StatefulWidget {
  const Quest({Key? key}) : super(key: key);

  @override
  _QuestState createState() => _QuestState();
}

class _QuestState extends State<Quest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15,
          top: 55,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Buka akun mu",
              style: TextStyle(
                color: Colors.black87,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Kami akan memberikan beberapa pertanyaan sebelum kamu berinvestasi",
              maxLines: 2,
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              "Kamu akan membutuhkan",
              style: TextStyle(
                color: Colors.black87,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Center(
                    child: Icon(
                      Icons.card_membership,
                      color: Color(
                        0xffffffff,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff16db65),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ID foto yang dikeluarkan pemerintah ",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "yang memiliki alamat dan",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "kewarganegaraan Anda",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Center(
                    child: Icon(
                      Icons.card_membership,
                      color: Color(
                        0xffffffff,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff16db65),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Selfie ',
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'yang jelas dan terlihat',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 55,
            ),
            Container(
              height: 90,
              width: MediaQuery.of(context).size.width / 1,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 6.0,
                    left: 15,
                    right: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: Center(
                          child: Icon(
                            Icons.card_membership,
                            color: Colors.black,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(
                            0xffffffff,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ID foto yang dikeluarkan pemerintah ",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black87,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "yang memiliki alamat dan",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black87,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "kewarganegaraan Anda",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black87,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quest1(),
                  ),
                );
              },
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  color: Color(
                    0xff058c42,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Selanjutnya',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Quest1 extends StatefulWidget {
  const Quest1({Key? key}) : super(key: key);

  @override
  _Quest1State createState() => _Quest1State();
}

class _Quest1State extends State<Quest1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15,
          top: 55,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "10 Points",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Ayo ambil foto id mu",
              style: TextStyle(
                color: Colors.black87,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "ID Anda harus dikeluarkan oleh pemerintah dan berisi foto, alamat, dan kewarganegaraan Anda",
              maxLines: 2,
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Container(
              child: Center(
                child: Icon(
                  CupertinoIcons.person_2_square_stack_fill,
                  color: Colors.grey,
                  size: 35,
                ),
              ),
              height: 170,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Colors.grey[300],
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Container(
              height: 90,
              width: MediaQuery.of(context).size.width / 1,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 6.0,
                    left: 15,
                    right: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: Center(
                          child: Icon(
                            Icons.card_membership,
                            color: Colors.white,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff16db65),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Data pribadi anda disimpan sesuai",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black87,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "dengan peraturan Indonesia",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black87,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Quest1(),
                //   ),
                // );
              },
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  color: Color(
                    0xff058c42,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Ambil foto',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quest2(),
                  ),
                );
              },
              child: Center(
                child: Text(
                  "Lewati untuk sekarang",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Gol {
  String name;
  Gol(this.name);
}

class Quest2 extends StatefulWidget {
  const Quest2({Key? key}) : super(key: key);

  @override
  _Quest2State createState() => _Quest2State();
}

class _Quest2State extends State<Quest2> {
  TextEditingController _txtNIK = TextEditingController();

  final sugars = [
    'SD',
    'SMP',
    'SMA',
    'Diploma 3',
    'Sarjana 1',
    'Lainnya',
  ];
  String? _currentSugars = 'Diploma 3';
  final agama = [
    'Islam',
    'Kristen',
    'Budha',
    'Hindu',
    'Khongucu',
    'Lainnya',
  ];
  String? _agamaTampil = 'Islam';
  final status = [
    'Sudah Menikah',
    'Belum Menikah',
    'Lainnya',
  ];
  String? _statusTampil = 'Sudah Menikah';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15,
          top: 55,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "20 Points",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Isi data diri",
              style: TextStyle(
                color: Colors.black87,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adiplscing elit. Sagitis gravida a, posuere duis morbi odio viverra poin a",
              maxLines: 3,
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Nomer NIK",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 0,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(
                        r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
                      ).hasMatch(value)) {
                    return "Enter correct phone number";
                  } else {
                    return null;
                  }
                },
                controller: _txtNIK,
                decoration: InputDecoration(
                  // prefixIcon: Icon(
                  //   Icons.format_list_numbered_rounded,
                  //   color: Color(
                  //     0xff25CED1,
                  //   ),
                  // ),
                  labelText: "NIK",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Pendidikan Terakhir",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: DropdownButtonFormField<String>(
                value: _currentSugars,
                items: sugars.map((sugar) {
                  return DropdownMenuItem(
                    value: sugar,
                    child: Text('$sugar'),
                  );
                }).toList(),
                onChanged: (val) => setState(() => _currentSugars = val),
              ),
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(color: Colors.transparent),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Agama",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: DropdownButtonFormField<String>(
                value: _agamaTampil,
                items: agama.map((sugar) {
                  return DropdownMenuItem(
                    value: sugar,
                    child: Text('$sugar'),
                  );
                }).toList(),
                onChanged: (val) => setState(() => _agamaTampil = val),
              ),
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(color: Colors.transparent),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Status",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: DropdownButtonFormField<String>(
                value: _statusTampil,
                items: status.map((sugar) {
                  return DropdownMenuItem(
                    value: sugar,
                    child: Text('$sugar'),
                  );
                }).toList(),
                onChanged: (val) => setState(() => _statusTampil = val),
              ),
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(color: Colors.transparent),
            ),
            SizedBox(
              height: 70,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quest3(),
                  ),
                );
              },
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  color: Color(
                    0xff058c42,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Selanjutnya',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quest3(),
                  ),
                );
              },
              child: Center(
                child: Text(
                  "Lewati untuk sekarang",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Quest3 extends StatefulWidget {
  const Quest3({Key? key}) : super(key: key);

  @override
  _Quest3State createState() => _Quest3State();
}

class _Quest3State extends State<Quest3> {
  TextEditingController _namaLengkap = TextEditingController();
  @override
  final kota = [
    'Jakarta',
    'Bandung',
    'Bekasi',
  ];
  String? kotaTampil = 'Jakarta';

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15,
          top: 55,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "30 Points",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Isi data diri",
              style: TextStyle(
                color: Colors.black87,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adiplscing elit. Sagitis gravida a, posuere duis morbi odio viverra poin a",
              maxLines: 3,
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 0,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(
                        r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
                      ).hasMatch(value)) {
                    return "Enter correct phone number";
                  } else {
                    return null;
                  }
                },
                controller: _namaLengkap,
                decoration: InputDecoration(
                  // prefixIcon: Icon(
                  //   Icons.format_list_numbered_rounded,
                  //   color: Color(
                  //     0xff25CED1,
                  //   ),
                  // ),
                  hintText: "Nama",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    minTime: DateTime(1970, 3, 5),
                    maxTime: DateTime.now(),
                    theme: DatePickerTheme(
                        headerColor: Colors.white,
                        backgroundColor: Colors.white,
                        itemStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                        doneStyle:
                            TextStyle(color: Colors.black, fontSize: 16)),
                    onChanged: (date) {
                  print('change $date in time zone ' +
                      date.timeZoneOffset.inHours.toString());
                }, onConfirm: (date) {
                  print('confirm $date');
                }, currentTime: DateTime.now(), locale: LocaleType.en);
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tanggal Lahir",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_drop_up_rounded,
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 0,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(
                        r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
                      ).hasMatch(value)) {
                    return "Enter correct phone number";
                  } else {
                    return null;
                  }
                },
                controller: _namaLengkap,
                decoration: InputDecoration(
                  // prefixIcon: Icon(
                  //   Icons.format_list_numbered_rounded,
                  //   color: Color(
                  //     0xff25CED1,
                  //   ),
                  // ),
                  hintText: "Tempat Lahir",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 0,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(
                        r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
                      ).hasMatch(value)) {
                    return "Enter correct phone number";
                  } else {
                    return null;
                  }
                },
                controller: _namaLengkap,
                decoration: InputDecoration(
                  // prefixIcon: Icon(
                  //   Icons.format_list_numbered_rounded,
                  //   color: Color(
                  //     0xff25CED1,
                  //   ),
                  // ),
                  hintText: "Alamat",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Asal Kota",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: DropdownButtonFormField<String>(
                value: kotaTampil,
                items: kota.map((sugar) {
                  return DropdownMenuItem(
                    value: sugar,
                    child: Text('$sugar'),
                  );
                }).toList(),
                onChanged: (val) => setState(() => kotaTampil = val),
              ),
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(color: Colors.transparent),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 0,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(
                        r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
                      ).hasMatch(value)) {
                    return "Enter correct phone number";
                  } else {
                    return null;
                  }
                },
                controller: _namaLengkap,
                decoration: InputDecoration(
                  // prefixIcon: Icon(
                  //   Icons.format_list_numbered_rounded,
                  //   color: Color(
                  //     0xff25CED1,
                  //   ),
                  // ),
                  hintText: "Kode Pos",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 0,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(
                        r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
                      ).hasMatch(value)) {
                    return "Enter correct phone number";
                  } else {
                    return null;
                  }
                },
                controller: _namaLengkap,
                decoration: InputDecoration(
                  // prefixIcon: Icon(
                  //   Icons.format_list_numbered_rounded,
                  //   color: Color(
                  //     0xff25CED1,
                  //   ),
                  // ),
                  hintText: "Nama ibu kandung",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quest4(),
                  ),
                );
              },
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  color: Color(
                    0xff058c42,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Selanjutnya',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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
    );
  }
}

class Quest4 extends StatefulWidget {
  const Quest4({Key? key}) : super(key: key);

  @override
  _Quest4State createState() => _Quest4State();
}

class _Quest4State extends State<Quest4> {
  final totalPenghasilan = [
    '< 3.000.000',
    '3.000.000 - 5.000.000',
    '> 5.000.000',
    '6.000.000 - 10.000.000',
    '> 10.000.000',
  ];
  String? penghasilanTampil = '> 5.000.000';
  final resiko = [
    '2 %',
    '4 %',
    '6 %',
    '8 %',
    '10 %',
  ];
  String? resikoTampil = '4 %';
  final pengalaman = [
    'Pernah',
    'Tidak Pernah',
  ];
  String? pengalamanTampil = 'Pernah';
  final jangkaWaktu = [
    '6 Bulan',
    '1 Tahun',
    '3 Tahun',
    '5 Tahun',
    '> 5 Tahun',
  ];
  String? jangkaWaktuTampil = '1 Tahun';
  final pendapatan = [
    'Lorem Ipsum',
    'Ipsum',
    'Lorem',
  ];
  String? pendapatanTampil = 'Lorem';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 55.0,
          left: 15,
          right: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "40 Points",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Isi data diri",
              style: TextStyle(
                color: Colors.black87,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adiplscing elit. Sagitis gravida a, posuere duis morbi odio viverra poin a",
              maxLines: 3,
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Total Penghasilan Sebulan",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: DropdownButtonFormField<String>(
                value: penghasilanTampil,
                items: totalPenghasilan.map((sugar) {
                  return DropdownMenuItem(
                    value: sugar,
                    child: Text('Rp.$sugar'),
                  );
                }).toList(),
                onChanged: (val) => setState(() => penghasilanTampil = val),
              ),
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(color: Colors.transparent),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Toleransi Resiko",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: DropdownButtonFormField<String>(
                value: resikoTampil,
                items: resiko.map((sugar) {
                  return DropdownMenuItem(
                    value: sugar,
                    child: Text('$sugar'),
                  );
                }).toList(),
                onChanged: (val) => setState(() => resikoTampil = val),
              ),
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(color: Colors.transparent),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Pengalaman Investasi",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: DropdownButtonFormField<String>(
                value: pengalamanTampil,
                items: pengalaman.map((sugar) {
                  return DropdownMenuItem(
                    value: sugar,
                    child: Text('$sugar'),
                  );
                }).toList(),
                onChanged: (val) => setState(() => pengalamanTampil = val),
              ),
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(color: Colors.transparent),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Jangka Waktu Investasi",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: DropdownButtonFormField<String>(
                value: jangkaWaktuTampil,
                items: jangkaWaktu.map((sugar) {
                  return DropdownMenuItem(
                    value: sugar,
                    child: Text('$sugar'),
                  );
                }).toList(),
                onChanged: (val) => setState(() => jangkaWaktuTampil = val),
              ),
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(color: Colors.transparent),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Sumber Pendapatan",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: DropdownButtonFormField<String>(
                value: pendapatanTampil,
                items: pendapatan.map((sugar) {
                  return DropdownMenuItem(
                    value: sugar,
                    child: Text('$sugar'),
                  );
                }).toList(),
                onChanged: (val) => setState(() => pendapatanTampil = val),
              ),
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(color: Colors.transparent),
            ),
            SizedBox(
              height: 35,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quest5(),
                  ),
                );
              },
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  color: Color(
                    0xff058c42,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Selanjutnya',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Quest2(),
                //   ),
                // );
              },
              child: Center(
                child: Text(
                  "Lewati untuk sekarang",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    ));
  }
}

class Quest5 extends StatefulWidget {
  const Quest5({Key? key}) : super(key: key);

  @override
  _Quest5State createState() => _Quest5State();
}

class _Quest5State extends State<Quest5> {
  final bank = [
    'BCA',
    'BRI',
    'Mandiri',
    'Lainnya',
  ];
  String? bankTampil = 'BCA';

  TextEditingController namaPemilik = TextEditingController();

  TextEditingController nomorRekening = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15,
          top: 55,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "50 Points",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Isi data akun bank",
              style: TextStyle(
                color: Colors.black87,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Daftarkan nomor rekening bank mu untuk menerima hasil penjualan saham atau pencairan reksadana",
              maxLines: 3,
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Nama Bank",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: DropdownButtonFormField<String>(
                value: bankTampil,
                items: bank.map((sugar) {
                  return DropdownMenuItem(
                    value: sugar,
                    child: Text('$sugar'),
                  );
                }).toList(),
                onChanged: (val) => setState(() => bankTampil = val),
              ),
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(color: Colors.transparent),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 0,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(
                        r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
                      ).hasMatch(value)) {
                    return "Enter correct phone number";
                  } else {
                    return null;
                  }
                },
                controller: namaPemilik,
                decoration: InputDecoration(
                  // prefixIcon: Icon(
                  //   Icons.format_list_numbered_rounded,
                  //   color: Color(
                  //     0xff25CED1,
                  //   ),
                  // ),
                  hintText: "Nama pemilik rekening",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 0,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(
                        r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
                      ).hasMatch(value)) {
                    return "Enter correct phone number";
                  } else {
                    return null;
                  }
                },
                controller: nomorRekening,
                decoration: InputDecoration(
                  // prefixIcon: Icon(
                  //   Icons.format_list_numbered_rounded,
                  //   color: Color(
                  //     0xff25CED1,
                  //   ),
                  // ),
                  hintText: "Nomor rekening",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 250,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quest6(),
                  ),
                );
              },
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  color: Color(
                    0xff058c42,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Selanjutnya',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Quest2(),
                //   ),
                // );
              },
              child: Center(
                child: Text(
                  "Lewati untuk sekarang",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}

class Quest6 extends StatefulWidget {
  const Quest6({Key? key}) : super(key: key);

  @override
  _Quest6State createState() => _Quest6State();
}

class _Quest6State extends State<Quest6> {
  TextEditingController _pekerjaan = TextEditingController();

  TextEditingController _namaPerusahaan = TextEditingController();

  TextEditingController _bidangPekerjaan = TextEditingController();

  TextEditingController _alamatKantor = TextEditingController();

  TextEditingController _kodePos = TextEditingController();

  TextEditingController _noTelpon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15,
          top: 55,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "60 Points",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Isi data diri",
              style: TextStyle(
                color: Colors.black87,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Daftarkan nomor rekening bank mu untuk menerima hasil penjualan saham atau pencairan reksadana",
              maxLines: 3,
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 0,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(
                        r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
                      ).hasMatch(value)) {
                    return "Enter correct phone number";
                  } else {
                    return null;
                  }
                },
                controller: _pekerjaan,
                decoration: InputDecoration(
                  // prefixIcon: Icon(
                  //   Icons.format_list_numbered_rounded,
                  //   color: Color(
                  //     0xff25CED1,
                  //   ),
                  // ),
                  hintText: "Pekerjaan",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 0,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(
                        r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
                      ).hasMatch(value)) {
                    return "Enter correct phone number";
                  } else {
                    return null;
                  }
                },
                controller: _namaPerusahaan,
                decoration: InputDecoration(
                  // prefixIcon: Icon(
                  //   Icons.format_list_numbered_rounded,
                  //   color: Color(
                  //     0xff25CED1,
                  //   ),
                  // ),
                  hintText: "Nama Perusahaan",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 0,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(
                        r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
                      ).hasMatch(value)) {
                    return "Enter correct phone number";
                  } else {
                    return null;
                  }
                },
                controller: _bidangPekerjaan,
                decoration: InputDecoration(
                  // prefixIcon: Icon(
                  //   Icons.format_list_numbered_rounded,
                  //   color: Color(
                  //     0xff25CED1,
                  //   ),
                  // ),
                  hintText: "Bidang Pekerjaan",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 0,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(
                        r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
                      ).hasMatch(value)) {
                    return "Enter correct phone number";
                  } else {
                    return null;
                  }
                },
                controller: _alamatKantor,
                decoration: InputDecoration(
                  // prefixIcon: Icon(
                  //   Icons.format_list_numbered_rounded,
                  //   color: Color(
                  //     0xff25CED1,
                  //   ),
                  // ),
                  hintText: "Alamat kantor",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 0,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(
                        r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
                      ).hasMatch(value)) {
                    return "Enter correct phone number";
                  } else {
                    return null;
                  }
                },
                controller: _alamatKantor,
                decoration: InputDecoration(
                  // prefixIcon: Icon(
                  //   Icons.format_list_numbered_rounded,
                  //   color: Color(
                  //     0xff25CED1,
                  //   ),
                  // ),
                  hintText: "Kode pos",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 0,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(
                        r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$',
                      ).hasMatch(value)) {
                    return "Enter correct phone number";
                  } else {
                    return null;
                  }
                },
                controller: _noTelpon,
                decoration: InputDecoration(
                  // prefixIcon: Icon(
                  //   Icons.format_list_numbered_rounded,
                  //   color: Color(
                  //     0xff25CED1,
                  //   ),
                  // ),
                  hintText: "No Telpon",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quest7(),
                  ),
                );
              },
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  color: Color(
                    0xff058c42,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Selanjutnya',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Quest2(),
                //   ),
                // );
              },
              child: Center(
                child: Text(
                  "Lewati untuk sekarang",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}

class Quest7 extends StatefulWidget {
  const Quest7({Key? key}) : super(key: key);

  @override
  _Quest7State createState() => _Quest7State();
}

class _Quest7State extends State<Quest7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15,
          top: 55,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "70 Points",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Ayo ambil foto selfie mu",
              style: TextStyle(
                color: Colors.black87,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "ID Anda harus dikeluarkan oleh pemerintah dan berisi foto, alamat, dan kewarganegaraan Anda",
              maxLines: 2,
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Container(
              child: Center(
                child: Icon(
                  CupertinoIcons.person_2_square_stack_fill,
                  color: Colors.grey,
                  size: 35,
                ),
              ),
              height: 170,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Colors.grey[300],
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Container(
              height: 90,
              width: MediaQuery.of(context).size.width / 1,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 6.0,
                    left: 15,
                    right: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: Center(
                          child: Icon(
                            Icons.card_membership,
                            color: Colors.grey,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(
                            0xffffffff,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Data pribadi anda disimpan sesuai",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black87,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "dengan peraturan Indonesia",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black87,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Quest1(),
                //   ),
                // );
              },
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  color: Color(
                    0xff058c42,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Ambil foto',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quest8(),
                  ),
                );
              },
              child: Center(
                child: Text(
                  "Lewati untuk sekarang",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Quest8 extends StatefulWidget {
  const Quest8({Key? key}) : super(key: key);

  @override
  _Quest8State createState() => _Quest8State();
}

class _Quest8State extends State<Quest8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15,
          top: 55,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInEmail(),
                      ),
                    );
                  },
                  child: Text(
                    "Back",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  "80 Points",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Berikan kami tanda tangan digital mu",
              style: TextStyle(
                color: Colors.black87,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "ID Anda harus dikeluarkan oleh pemerintah dan berisi foto, alamat, dan kewarganegaraan Anda",
              maxLines: 2,
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 500,
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Quest1(),
                //   ),
                // );
              },
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  color: Color(
                    0xff058c42,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Ambil Tanda Tangan',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Quest9(),
                  ),
                );
              },
              child: Center(
                child: Text(
                  "Lewati untuk sekarang",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Quest9 extends StatefulWidget {
  const Quest9({Key? key}) : super(key: key);

  @override
  _Quest9State createState() => _Quest9State();
}

class _Quest9State extends State<Quest9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15,
          top: 55,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "80 Points",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Berikan kami tanda tangan digital mu",
              style: TextStyle(
                color: Colors.black87,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "ID Anda harus dikeluarkan oleh pemerintah dan berisi foto, alamat, dan kewarganegaraan Anda",
              maxLines: 2,
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
