import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../services/textStyle.dart';

class DashboardDetail extends StatefulWidget {
  const DashboardDetail({Key? key}) : super(key: key);

  @override
  _DashboardDetailState createState() => _DashboardDetailState();
}

class _DashboardDetailState extends State<DashboardDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Detail",
          style: TitlePage(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 25,
          right: 25,
          top: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.wand_rays_inverse,
                  color: Colors.green,
                ),
                title: Text(
                  "High",
                  style: ProfilTitle(),
                ),
                trailing: Text(
                  "30430",
                  style: ProfilData(),
                ),
              ),
              height: 60,
              width: MediaQuery.of(context).size.width / 1,
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
                  borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.arrow_turn_left_down,
                  color: Colors.green,
                ),
                title: Text(
                  "Low",
                  style: ProfilTitle(),
                ),
                trailing: Text(
                  "30234",
                  style: ProfilData(),
                ),
              ),
              height: 60,
              width: MediaQuery.of(context).size.width / 1,
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
                  borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  Icons.lock_open_outlined,
                  color: Colors.green,
                ),
                title: Text(
                  "Open",
                  style: ProfilTitle(),
                ),
                trailing: Text(
                  "30430",
                  style: ProfilData(),
                ),
              ),
              height: 60,
              width: MediaQuery.of(context).size.width / 1,
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
                  borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.cart,
                  color: Colors.green,
                ),
                title: Text(
                  "Market Cap",
                  style: ProfilTitle(),
                ),
                trailing: Text(
                  "41.55 T",
                  style: ProfilData(),
                ),
              ),
              height: 60,
              width: MediaQuery.of(context).size.width / 1,
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
                  borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.money_dollar,
                  color: Colors.green,
                ),
                title: Text(
                  "Price-earnings ratio",
                  style: ProfilTitle(),
                ),
                trailing: Text(
                  "30430",
                  style: ProfilData(),
                ),
              ),
              height: 60,
              width: MediaQuery.of(context).size.width / 1,
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
                  borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.percent,
                  color: Colors.green,
                ),
                title: Text(
                  "Dividend yield",
                  style: ProfilTitle(),
                ),
                trailing: Text(
                  "0.32 %",
                  style: ProfilData(),
                ),
              ),
              height: 60,
              width: MediaQuery.of(context).size.width / 1,
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
                  borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  Icons.volume_mute_outlined,
                  color: Colors.green,
                ),
                title: Text(
                  "Average Volume",
                  style: ProfilTitle(),
                ),
                trailing: Text(
                  "2,422,222",
                  style: ProfilData(),
                ),
              ),
              height: 60,
              width: MediaQuery.of(context).size.width / 1,
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
                  borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  Icons.ios_share_outlined,
                  color: Colors.green,
                ),
                title: Text(
                  "Earnings per share",
                  style: ProfilTitle(),
                ),
                trailing: Text(
                  "52110",
                  style: ProfilData(),
                ),
              ),
              height: 60,
              width: MediaQuery.of(context).size.width / 1,
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
                  borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: ListTile(
                leading: Icon(
                  Icons.ios_share_outlined,
                  color: Colors.green,
                ),
                title: Text(
                  "1 Year High (52w)",
                  style: ProfilTitle(),
                ),
                trailing: Text(
                  "147.64",
                  style: ProfilData(),
                ),
              ),
              height: 60,
              width: MediaQuery.of(context).size.width / 1,
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
                  borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
