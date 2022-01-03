import 'package:flutter/material.dart';
import 'package:zetproject/services/textStyle.dart';

class GetWatchlist extends StatefulWidget {
  const GetWatchlist({Key? key}) : super(key: key);

  @override
  _GetWatchlistState createState() => _GetWatchlistState();
}

class _GetWatchlistState extends State<GetWatchlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(
          0xffffffff,
        ),
        elevation: 0,
        title: Text(
          "Wishlist",
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
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 25,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200]!,
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(
                            1,
                            2,
                          ),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 5.0,
                        right: 5,
                        top: 4,
                      ),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      50,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                //   image: DecorationImage(
                                //     image: NetworkImage(
                                // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                //     ),
                                //   ),
                                color: Color(0xffffffff),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[200]!,
                                    spreadRadius: 1,
                                    offset: Offset(1, 2),
                                    blurRadius: 1,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(
                                  50,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("BBCA", style: TitleSaham1()),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      // syariah(
                                      //   data[i]['syariah'],
                                      // ),
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
                                          "Bank Central Asia",
                                          overflow: TextOverflow.ellipsis,
                                          style: SubtitleSaham1(),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    right: 12,
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "30850",
                          style: TextStyle(
                              color: Colors.red,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        SizedBox(width: 15),
                        Text(
                          "+ 2,00 (3.04%)",
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: "Poppins",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200]!,
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(
                            1,
                            2,
                          ),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 5.0,
                        right: 5,
                        top: 4,
                      ),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      50,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbri.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                //   image: DecorationImage(
                                //     image: NetworkImage(
                                // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                //     ),
                                //   ),
                                color: Color(0xffffffff),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[200]!,
                                    spreadRadius: 1,
                                    offset: Offset(1, 2),
                                    blurRadius: 1,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(
                                  50,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("BBRI", style: TitleSaham1()),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      // syariah(
                                      //   data[i]['syariah'],
                                      // ),
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
                                          "Bank Rakyat Indonesia",
                                          overflow: TextOverflow.ellipsis,
                                          style: SubtitleSaham1(),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    right: 12,
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "2422",
                          style: TextStyle(
                              color: Colors.red,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        SizedBox(width: 15),
                        Text(
                          "- 1,40 (3.04%)",
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: "Poppins",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200]!,
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(
                            1,
                            2,
                          ),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 5.0,
                        right: 5,
                        top: 4,
                      ),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      50,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/tlkm.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                //   image: DecorationImage(
                                //     image: NetworkImage(
                                // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                //     ),
                                //   ),
                                color: Color(0xffffffff),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[200]!,
                                    spreadRadius: 1,
                                    offset: Offset(1, 2),
                                    blurRadius: 1,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(
                                  50,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("TLKM", style: TitleSaham1()),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      // syariah(
                                      //   data[i]['syariah'],
                                      // ),
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
                                          "Telekomunikasi Indonesia",
                                          overflow: TextOverflow.ellipsis,
                                          style: SubtitleSaham1(),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    right: 12,
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "30850",
                          style: TextStyle(
                              color: Color(0xff00aa13),
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        SizedBox(width: 15),
                        Text(
                          "+ 8,00 (3.04%)",
                          style: TextStyle(
                            color: Color(0xff00aa13),
                            fontFamily: "Poppins",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200]!,
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(
                            1,
                            2,
                          ),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 5.0,
                        right: 5,
                        top: 4,
                      ),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      50,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/agro.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                //   image: DecorationImage(
                                //     image: NetworkImage(
                                // 'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bbca.jpg',
                                //     ),
                                //   ),
                                color: Color(0xffffffff),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[200]!,
                                    spreadRadius: 1,
                                    offset: Offset(1, 2),
                                    blurRadius: 1,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(
                                  50,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("AGRO", style: TitleSaham1()),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      // syariah(
                                      //   data[i]['syariah'],
                                      // ),
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
                                          "Bank BRI Agroniaga",
                                          overflow: TextOverflow.ellipsis,
                                          style: SubtitleSaham1(),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    right: 12,
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "30850",
                          style: TextStyle(
                              color: Color(0xff00aa13),
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        SizedBox(width: 15),
                        Text(
                          "+ 8,00 (3.04%)",
                          style: TextStyle(
                            color: Color(0xff00aa13),
                            fontFamily: "Poppins",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}
