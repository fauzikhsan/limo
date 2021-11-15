import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zetproject/textStyle.dart';

class InfoAkun extends StatefulWidget {
  const InfoAkun({Key? key}) : super(key: key);

  @override
  _InfoAkunState createState() => _InfoAkunState();
}

class _InfoAkunState extends State<InfoAkun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Info Akun",
          style: Parent(),
        ),
        backgroundColor: Color(0xffffffff),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
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
            top: 20,
          ),
          child: Column(
            children: [
              Center(
                child: Container(
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          child: Center(
                            child: Icon(
                              CupertinoIcons.camera,
                              color: Colors.white,
                            ),
                          ),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color(
                              0xff00aa13,
                            ),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.grey[200]!,
                            //     spreadRadius: 1,
                            //     blurRadius: 6,
                            //     offset: Offset(
                            //       1,
                            //       2,
                            //     ),
                            //   ),
                            // ],
                            borderRadius: BorderRadius.circular(
                              50,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(
                        "images/khabib.jpeg",
                      ),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        spreadRadius: 3,
                        blurRadius: 6,
                        offset: Offset(
                          1,
                          2,
                        ),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(
                      80,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "General",
                    style: Parent(),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    CupertinoIcons.person,
                    color: Color(
                      0xff00aa13,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nama Lengkap",
                        style: ProfilTitle(),
                      ),
                      Text(
                        "Fauzi Ikhsan Fajar Muzaqi",
                        style: ProfilData(),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    CupertinoIcons.phone,
                    color: Color(
                      0xff00aa13,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nomor Telepon",
                        style: ProfilTitle(),
                      ),
                      Text(
                        "089765432100",
                        style: ProfilData(),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    CupertinoIcons.rectangle_grid_2x2,
                    color: Color(
                      0xff00aa13,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Profil Resiko",
                        style: ProfilTitle(),
                      ),
                      Text(
                        "High Risk",
                        style: ProfilData(),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    CupertinoIcons.mail,
                    color: Color(
                      0xff00aa13,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: ProfilTitle(),
                      ),
                      Text(
                        "ifaujay@gmail.com",
                        style: ProfilData(),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    CupertinoIcons.lock,
                    color: Color(
                      0xff00aa13,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kata Sandi",
                        style: ProfilTitle(),
                      ),
                      Text(
                        "************",
                        style: ProfilData(),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Privasi",
                    style: Parent(),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    CupertinoIcons.dot_square,
                    color: Color(
                      0xff00aa13,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "SID",
                        style: ProfilTitle(),
                      ),
                      Text(
                        "IDD4210BC153232",
                        style: ProfilData(),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bank",
                    style: Parent(),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    CupertinoIcons.location_circle,
                    color: Color(
                      0xff00aa13,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nama Bank",
                        style: ProfilTitle(),
                      ),
                      Text(
                        "Asia Bank Centra (ABC)",
                        style: ProfilData(),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    CupertinoIcons.person,
                    color: Color(
                      0xff00aa13,
                    ),
                  ),
                  SizedBox(
                    width: 20,
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
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    CupertinoIcons.number_circle,
                    color: Color(
                      0xff00aa13,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nomor Rekening",
                        style: ProfilTitle(),
                      ),
                      Text(
                        "4542154111",
                        style: ProfilData(),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
