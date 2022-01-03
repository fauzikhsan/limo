import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:chart_sparkline/chart_sparkline.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zetproject/screen/home/bottom.dart';
import 'package:zetproject/screen/models.dart' as apitetra;
import 'package:zetproject/screen/subScreen/beli.dart';
import 'package:zetproject/screen/subScreen/jual.dart';
import '../../services/textStyle.dart';

class Hargachart {
  String idticker;
  String open;
  String high;
  String low;
  String close;
  String volumeto;

  Hargachart(
      {required this.idticker,
      required this.open,
      required this.high,
      required this.low,
      required this.close,
      required this.volumeto});

  @override
  String toString() {
    return '{open: $open, high:$high, low:$low, close:$close, volumeto:$volumeto}';
  }

  factory Hargachart.fromJson(Map<String, dynamic> json) {
    return Hargachart(
      idticker: json["idticker"],
      open: json["open"],
      high: json["high"],
      low: json["low"],
      close: json["close"],
      volumeto: json["volumeto"],
    );
  }
}

class Saham {
  // final int userId;
  // final int id;
  final String namaemiten;
  final String sector;
  final String action;
  final String harga;
  final String trendclass;
  final String trendvalue;
  final String akumclass;
  final String akumval;
  final String moneyflowclass;
  final String moneyflowval;
  final String stochclass;
  final String stochval;
  final String ts;
  final String sl1;
  final String sl2;
  final String bo;
  final String tp1;
  final String tp2;
  final String r1;
  final String r2;
  final String r3;
  final String pivprice;
  final String s1;
  final String s2;
  final String s3;
  final String pbvval;
  final String pbvclass;
  final String epsval;
  final String epsclass;
  final String epsgrowthval;
  final String epsgrowthclass;
  final String perval;
  final String perclass;
  final String roeval;
  final String roeclass;
  final String derval;
  final String derclass;
  final String selisih;
  final String persen;
  final String warnaselisih;
  final String tandaselisih;
  final String trenstat;
  final String akumstat;
  final String moneyflowstat;
  final String stochstat;
  final String pbvstat;
  final String epsstat;
  final String epsgrowthstat;
  final String perstat;
  final String roestat;
  final String derstat;
  final String tumbuh;
  final String naik;
  final String tgl;
  final String chart;
  //final List hargachart;
  final List<Hargachart> hargachart;
  final String wacthbutton;
  final List tickerweek;
  final String highweek;
  final String lowweek;
  final List tickermonth;
  final String highmonth;
  final String lowmonth;
  final List tickeryear;
  final String highyear;
  final String lowyear;

  //screener
  final String candle;
  final String onthemove;
  final String negative;
  final String earlytrend;
  final String lonjakanvolume;
  final String bigaccum;
  final String bigwhitecandle;
  final String breakouthigh;
  final String rejectionsupport;
  final String peratio;
  final String returnonequity;
  final String debttoequoty;
  final String pricetobvratio;
  final String uptrendma100;
  final String crossup;
  final String crossdown;
  final String goldencross;
  final String deathcross;

  //Saham({this.userId, this.id, this.title});
  Saham({
    required this.namaemiten,
    required this.sector,
    required this.action,
    required this.harga,
    required this.trendclass,
    required this.trendvalue,
    required this.akumclass,
    required this.akumval,
    required this.moneyflowclass,
    required this.moneyflowval,
    required this.stochclass,
    required this.stochval,
    required this.sl1,
    required this.ts,
    required this.sl2,
    required this.bo,
    required this.tp1,
    required this.tp2,
    required this.r1,
    required this.r2,
    required this.r3,
    required this.pivprice,
    required this.s1,
    required this.s2,
    required this.s3,
    required this.pbvval,
    required this.pbvclass,
    required this.epsval,
    required this.epsclass,
    required this.epsgrowthval,
    required this.epsgrowthclass,
    required this.perval,
    required this.perclass,
    required this.roeclass,
    required this.roeval,
    required this.derclass,
    required this.derval,
    required this.selisih,
    required this.persen,
    required this.warnaselisih,
    required this.tandaselisih,
    required this.trenstat,
    required this.akumstat,
    required this.moneyflowstat,
    required this.stochstat,
    required this.pbvstat,
    required this.epsstat,
    required this.epsgrowthstat,
    required this.perstat,
    required this.roestat,
    required this.derstat,
    required this.tumbuh,
    required this.naik,
    required this.tgl,
    required this.hargachart,
    required this.chart,
    required this.wacthbutton,
    required this.candle,
    required this.onthemove,
    required this.negative,
    required this.earlytrend,
    required this.lonjakanvolume,
    required this.bigaccum,
    required this.bigwhitecandle,
    required this.breakouthigh,
    required this.rejectionsupport,
    required this.peratio,
    required this.returnonequity,
    required this.debttoequoty,
    required this.uptrendma100,
    required this.crossup,
    required this.crossdown,
    required this.pricetobvratio,
    required this.goldencross,
    required this.deathcross,
    required this.tickerweek,
    required this.highweek,
    required this.lowweek,
    required this.tickermonth,
    required this.highmonth,
    required this.lowmonth,
    required this.tickeryear,
    required this.highyear,
    required this.lowyear,
  });

  // @override
  // String toString() {
  //   return 'Saham{namaemiten: $namaemiten, age: $age, hobi: $hobi, github: $github}';
  // }

  factory Saham.fromJson(Map<String, dynamic> json) {
    // //baca property articles sebagai List (JSON Array)
    // var listHarga = json['result']['ticker'] as List;

    // // mapping listArticles kedalam bentuk MappedIterable<dynamic, Article>
    // var iterableArticles = listHarga.map((hargachart) {
    //   return Hargachart.fromJson(hargachart);
    // });

    // // lalu, kita konversi dari MappedIterable kedalam bentuk List<Article>
    // var hargachart = List<Hargachart>.from(iterableArticles);

    return Saham(
      // userId: json['userId'],
      // id: json['id'],
      namaemiten: json['result']['namaemiten'],
      sector: json['result']['sector'],
      action: json['result']['action'],
      harga: json['result']['harga'],
      trendclass: json['result']['trendclass'],
      trendvalue: json['result']['trendvalue'],
      akumclass: json['result']['akumclass'],
      akumval: json['result']['akumval'],
      moneyflowclass: json['result']['moneyflowclass'],
      moneyflowval: json['result']['moneyflowval'],
      stochclass: json['result']['stochclass'],
      stochval: json['result']['stochval'],
      ts: json['result']['ts'],
      sl1: json['result']['sl1'],
      sl2: json['result']['sl2'],
      bo: json['result']['bo'],
      tp1: json['result']['tp1'],
      tp2: json['result']['tp2'],
      r1: json['result']['r1'],
      r2: json['result']['r2'],
      r3: json['result']['r3'],
      pivprice: json['result']['pivprice'],
      s1: json['result']['s1'],
      s2: json['result']['s2'],
      s3: json['result']['s3'],
      epsclass: json['result']['epsclass'],
      epsval: json['result']['epsval'],
      epsgrowthclass: json['result']['epsgrowthclass'],
      epsgrowthval: json['result']['epsgrowthval'],
      perclass: json['result']['perclass'],
      perval: json['result']['perval'],
      pbvclass: json['result']['pbvclass'],
      pbvval: json['result']['pbvval'],
      roeclass: json['result']['roeclass'],
      roeval: json['result']['roeval'],
      derclass: json['result']['derclass'],
      derval: json['result']['derval'],
      selisih: json['result']['selisih'],
      persen: json['result']['persen'],

      warnaselisih: json['result']['warnaselisih'],
      tandaselisih: json['result']['tandaselisih'],
      trenstat: json['result']['trenstat'],
      akumstat: json['result']['akumstat'],
      moneyflowstat: json['result']['moneyflowstat'],
      stochstat: json['result']['stochstat'],
      epsstat: json['result']['epsstat'],
      epsgrowthstat: json['result']['epsgrowthstat'],
      perstat: json['result']['perstat'],
      pbvstat: json['result']['pbvstat'],
      roestat: json['result']['roestat'],
      derstat: json['result']['derstat'],
      tumbuh: json['result']['tumbuh'],
      naik: json['result']['naik'],
      tgl: json['result']['tglcommentary'],
      chart: json['result']['chart'],
      // hargachart: hargachart,
      wacthbutton: json['result']['wacthbutton'],
      candle: json['result']['candle'],
      onthemove: json['result']['onthemove'],
      negative: json['result']['negative'],
      earlytrend: json['result']['earlytrend'],
      lonjakanvolume: json['result']['lonjakanvolume'],
      bigaccum: json['result']['bigaccum'],
      bigwhitecandle: json['result']['bigwhitecandle'],
      breakouthigh: json['result']['breakouthigh'],
      rejectionsupport: json['result']['rejectionsupport'],
      peratio: json['result']['peratio'],
      returnonequity: json['result']['returnonequity'],
      debttoequoty: json['result']['debttoequoty'],
      pricetobvratio: json['result']['pricetobvratio'],
      uptrendma100: json['result']['uptrendma100'],
      crossup: json['result']['crossup'],
      crossdown: json['result']['crossdown'],
      goldencross: json['result']['goldencross'],
      deathcross: json['result']['deathcross'],
      tickerweek: json["result"]["tickerweek"],
      highweek: json["result"]["highweek"],
      lowweek: json["result"]["lowweek"],
      tickermonth: json["result"]["tickermonth"],
      highmonth: json["result"]["highmonth"],
      lowmonth: json["result"]["lowmonth"],
      tickeryear: json["result"]["tickeryear"],
      highyear: json["result"]["highyear"],
      lowyear: json["result"]["lowyear"], hargachart: [],

      // hargachart: List<Hargachart>.from(json['result']['ticker'].map((hargachart) {
      //   return Hargachart.fromJson(hargachart);
      // }))

      //hargachart: json['result']['ticker'],
    );
  }

  // factory Saham.ticker(Map<List, dynamic> json){
  //   return Saham(
  //     hargachart: json['result']['ticker'],
  //   );
  // }
}

class Dashboard extends StatefulWidget {
  final String kodesaham;
  final String halaman;
  final String route;
  const Dashboard(
      {Key? key,
      required this.kodesaham,
      required this.halaman,
      required this.route})
      : super(key: key);

  @override
  _DashboardState createState() => _DashboardState(kodesaham, route);
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  late Future<Saham> futureSaham;
  String kodesaham;
  String route;
  //static List hargachart;

  _DashboardState(this.kodesaham, this.route);

  trendclass(String trendclass) {
    if (trendclass == 'red') {
      return Colors.red;
    } else if (trendclass == '') {
      return Colors.white;
    } else if (trendclass == 'green') {
      return Colors.green;
    } else if (trendclass == 'yellow') {
      return Colors.amberAccent[700];
    } else if (trendclass == 'blue') {
      return Colors.blue;
    }
  }

  Future<Saham> connectTopAPI(String kodesaham) async {
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // var uid = prefs.getString('uid');
    var uid = '13';
    var kodenya = kodesaham;
    final response = await http.get(Uri.https(
      apitetra.domain,
      '/saham/detail',
      {
        "id": apitetra.idapi,
        "key": apitetra.keyapi,
        "uid": uid,
        "kode": kodenya,
        "identifier": apitetra.identifier,
      },
    ));

    var datasaham = json.decode(response.body);
    var akses = datasaham['akses'];

    //var message = datasaham['result'];
    //final tickernya = datasaham['result']['ticker'];
    //print(datasaham);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      if (akses == "1") {
        return Saham.fromJson(datasaham);
        //return Saham.ticker(datasaham);
      } else if (akses == "0") {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0)), //this right here
                child: Stack(
                  children: <Widget>[
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   children: <Widget>[
                    //     IconButton(
                    //         icon: Icon(Icons.close, color: Colors.grey,),
                    //         onPressed: () {
                    //           Navigator.of(context).pop();
                    //         }),
                    //   ],
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80.0, top: 15),
                      child: Image.asset(
                        "images/langganan.png",
                        scale: 0.9,
                      ),
                    ),
                    Container(
                      height: 400,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 150.0, left: 8, right: 8),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Upss... Fitur Terkunci!",
                                style: TextStyle(
                                  color: Color(0xff134074),
                                  fontFamily: "Poppins",
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Untuk lebih CUAN dan mengakses fitur ini yuk berlangganan.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff134074),
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              FlatButton(
                                  color: Color(0xFF134074),
                                  //shape: CircleBorder(),
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) => Langganan(
                                    //         route: 'bar',
                                    //       ),
                                    //     ));
                                  },
                                  //onPressed: () => Navigator.pop(context),
                                  child: new Text("Beli PRIME!",
                                      style: TextStyle(
                                        color: Colors.white,
                                      )))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            });
      } else if (akses == "2") {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)), //this right here
              child: Stack(
                children: <Widget>[
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: <Widget>[
                  //     IconButton(
                  //         icon: Icon(Icons.close, color: Colors.grey,),
                  //         onPressed: () {
                  //           Navigator.of(context).pop();
                  //         }),
                  //   ],
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0, top: 15),
                    child: Image.asset(
                      "images/langganan.png",
                      scale: 0.9,
                    ),
                  ),
                  Container(
                    height: 400,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 150.0, left: 8, right: 8),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Mohon Maaf!",
                              style: TextStyle(
                                color: Color(0xff134074),
                                fontFamily: "Poppins",
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Mohon Maaf, Kode saham yang Anda cari tidak ditemukan',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff134074),
                                fontFamily: "Poppins",
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            FlatButton(
                                color: Color(0xFF134074),
                                onPressed: () {
                                  Route route = MaterialPageRoute(
                                      builder: (context) => MyHomePage(
                                            displayname: '',
                                          ));
                                  Navigator.push(context, route);
                                },
                                //onPressed: () => Navigator.pop(context),
                                child: new Text("Kembali ke HOME",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data saham');
    }
    throw Exception('');
  }

  late TabController controller;
  late TabController controllerchart;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
    controllerchart = TabController(length: 3, vsync: this);
    futureSaham = connectTopAPI(kodesaham);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    controllerchart.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: TitlePage(),
        ),
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
            // Navigator.of(context, rootNavigator: true).push(
            //   PageTransition(
            //     type: PageTransitionType.fade,
            //     child: MyHomePage(
            //       displayname: '',
            //     ),
            //   ),
            // );
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      // body: FutureBuilder<Saham>(
      //   future: futureSaham,
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       if (snapshot.data != null) {
      //         var tickerweek = snapshot.data!.tickerweek;
      //         var highweek = snapshot.data!.highweek;
      //         var lowweek = snapshot.data!.lowweek;
      //         var tickermonth = snapshot.data!.tickermonth;
      //         var highmonth = snapshot.data!.highmonth;
      //         var lowmonth = snapshot.data!.lowmonth;
      //         var tickeryear = snapshot.data!.tickeryear;
      //         var highyear = snapshot.data!.highyear;
      //         var lowyear = snapshot.data!.lowyear;
      //         var newtickerweek = tickerweek.map((tickerweek) {
      //           return double.parse(tickerweek);
      //         }).toList();
      //         var newtickermonth = tickermonth.map((tickermonth) {
      //           return double.parse(tickermonth);
      //         }).toList();
      //         var newtickeryear = tickeryear.map((tickeryear) {
      //           return double.parse(tickeryear);
      //         }).toList();
      //         return Stack(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    right: 25,
                    top: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            kodesaham,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Container(
                            width: 250,
                            child: Text(
                              "     snapshot.data!.namaemiten,",
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Harga Terakhir  ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '802 +(5,65%)',
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
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                        ),
                        child: Container(
                          height: 60,
                          width: 60,
                          child: FadeInImage(
                            image: NetworkImage(
                              "https://dev-api.tetraxchange.id/upload/idx/" +
                                  kodesaham +
                                  ".jpg",
                            ),
                            placeholder: AssetImage("images/logo2.jpg"),
                            imageErrorBuilder: (context, error, stackTrace) {
                              return Image.asset('images/logo2.jpg',
                                  fit: BoxFit.cover);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                      top: 0.0, bottom: 0.0, left: 1.00, right: 10.0),
                  child: TabBarView(
                    controller: controllerchart,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.30,
                            child: Sparkline(
                              // data: newtickerweek,
                              lineColor: Colors.blue,
                              useCubicSmoothing: true,
                              cubicSmoothingFactor: 0.1,
                              // kLine: [
                              //   'max',
                              //   'min',
                              // ],
                              fillMode: FillMode.below,
                              fillGradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  // trendclass(
                                  //   snapshot.data!.trendclass,
                                  // ),
                                  Colors.white,
                                ],
                              ),
                              pointsMode: PointsMode.last,
                              pointSize: 8.0,
                              pointColor: Colors.amber, data: [],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Text('High : highweek  -  Low : lowweek',
                                style: TextStyle(
                                  fontSize: 12,
                                )),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.30,
                            child: Sparkline(
                              data: [],
                              lineColor: Colors.blue,
                              useCubicSmoothing: true,
                              cubicSmoothingFactor: 0.1,
                              // kLine: [
                              //   'max',
                              //   'min',
                              // ],
                              fillMode: FillMode.below,
                              fillGradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  // trendclass(
                                  //   snapshot.data!.trendclass,
                                  // ),
                                  Colors.white,
                                ],
                              ),
                              pointsMode: PointsMode.last,
                              pointSize: 8.0,
                              pointColor: Colors.amber,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Text('High : highmonth  -  Low : lowmonth',
                                style: TextStyle(
                                  fontSize: 12,
                                )),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.30,
                            child: Sparkline(
                              data: [],
                              lineColor: Colors.blue,
                              useCubicSmoothing: true,
                              cubicSmoothingFactor: 0.1,
                              // kLine: [
                              //   'max',
                              //   'min',
                              // ],
                              fillMode: FillMode.below,
                              fillGradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  // trendclass(
                                  //   snapshot.data!.trendclass,
                                  // ),
                                  Colors.white,
                                ],
                              ),
                              pointsMode: PointsMode.last,
                              pointSize: 8.0,
                              pointColor: Colors.amber,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Text('High : highyear  -  Low : lowyear',
                                style: TextStyle(
                                  fontSize: 12,
                                )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 35,
                  padding:
                      const EdgeInsets.only(left: 50.0, right: 50.0, top: 0.0),
                  child: TabBar(
                    controller: controllerchart,
                    // give the indicator a decoration (color and border radius)
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        14.0,
                      ),
                      color: Colors.lightBlueAccent,
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: '1 Week',
                      ),
                      Tab(
                        text: '1 Month',
                      ),
                      Tab(
                        text: '1 Year',
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 130,
                // ),
                // Center(
                //   child: Text(
                //     "CHART",
                //     style: TextStyle(
                //       fontSize: 18,
                //       fontFamily: "Nunito",
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 100,
                // ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "30323",
                        style: Header1(),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Last Close ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '+ 802 (5,53) ',
                              style: TextStyle(
                                color: Colors.green,
                                fontFamily: "Poppins",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    right: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Posisi saat ini",
                        style: TitleSaham1(),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => DashboardDetail(),
                          //   ),
                          // );
                        },
                        child: Text(
                          "",
                          style: LihatSemua(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    right: 25,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jumlah Lot",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "N/A",
                            style: ProfilData(),
                          ),
                        ],
                      ),
                      Divider(
                        height: 8,
                        color: Colors.grey[300],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Market Volume",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "887,074",
                            style: ProfilData(),
                          ),
                        ],
                      ),
                      Divider(
                        height: 8,
                        color: Colors.grey[300],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Daily P&L",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "Rp. 50.000",
                            style: ProfilData(),
                          ),
                        ],
                      ),
                      Divider(
                        height: 8,
                        color: Colors.grey[300],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Realized P&L",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "165000",
                            style: ProfilData(),
                          ),
                        ],
                      ),
                      Divider(
                        height: 8,
                        color: Colors.grey[300],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Unrelized",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "87533",
                            style: ProfilData(),
                          ),
                        ],
                      ),
                      Divider(
                        height: 8,
                        color: Colors.grey[300],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Avg Price",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "87533",
                            style: ProfilData(),
                          ),
                        ],
                      ),
                      Divider(
                        height: 8,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    right: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Information",
                        style: TitleSaham1(),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => DashboardDetail(),
                          //   ),
                          // );
                        },
                        child: Text(
                          "",
                          style: LihatSemua(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    right: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 8,
                                right: 8,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.moving_outlined,
                                    color: Colors.green,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10.0,
                                      left: 15,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "High",
                                          style: ProfilTitle(),
                                        ),
                                        Text(
                                          "30430",
                                          style: ProfilData(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            height: 60,
                            width: MediaQuery.of(context).size.width / 2.5,
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
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 8,
                                right: 8,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    CupertinoIcons.arrow_turn_left_down,
                                    color: Colors.green,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10.0,
                                      left: 15,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Low",
                                          style: ProfilTitle(),
                                        ),
                                        Text(
                                          "30234",
                                          style: ProfilData(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            height: 60,
                            width: MediaQuery.of(context).size.width / 2.5,
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
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 8,
                                right: 8,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.lock_open_outlined,
                                    color: Colors.green,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10.0,
                                      left: 15,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Open",
                                          style: ProfilTitle(),
                                        ),
                                        Text(
                                          "30430",
                                          style: ProfilData(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            height: 60,
                            width: MediaQuery.of(context).size.width / 2.5,
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
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 8,
                                right: 8,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    CupertinoIcons.cart,
                                    color: Colors.green,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10.0,
                                      left: 15,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Market Cap",
                                          style: ProfilTitle(),
                                        ),
                                        Text(
                                          "41,55 T",
                                          style: ProfilData(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            height: 60,
                            width: MediaQuery.of(context).size.width / 2.5,
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
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    right: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Detail",
                        style: TitleSaham1(),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => DashboardDetail(),
                          //   ),
                          // );
                        },
                        child: Text(
                          "",
                          style: LihatSemua(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    right: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dividen Yield",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "N/A",
                            style: ProfilData(),
                          ),
                        ],
                      ),
                      Divider(
                        height: 8,
                        color: Colors.grey[300],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Average Volume",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "887,074",
                            style: ProfilData(),
                          ),
                        ],
                      ),
                      Divider(
                        height: 8,
                        color: Colors.grey[300],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Earnings per share",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "Rp. 50.000",
                            style: ProfilData(),
                          ),
                        ],
                      ),
                      Divider(
                        height: 8,
                        color: Colors.grey[300],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "1 Year High (52w)",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "165000",
                            style: ProfilData(),
                          ),
                        ],
                      ),
                      Divider(
                        height: 8,
                        color: Colors.grey[300],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "1 Year Low (522)",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "87533",
                            style: ProfilData(),
                          ),
                        ],
                      ),
                      Divider(
                        height: 8,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Orang juga membeli",
                        style: TitleSaham1(),
                      ),
                      Text(
                        "Lihat semua",
                        style: LihatSemua(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                  ),
                  child: SizedBox(
                    height: 125,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: Center(
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      120,
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
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "TLKM",
                              style: TitleSaham1(),
                            ),
                            Text(
                              "+ 59 (2.2%)",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: Center(
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      120,
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
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "BBRI",
                              style: TitleSaham1(),
                            ),
                            Text(
                              "+ 229 (5.3%)",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: Center(
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      120,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/bksl.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
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
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "BKSL",
                              style: TitleSaham1(),
                            ),
                            Text(
                              "+ 229 (5.3%)",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: Center(
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      120,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://www.idx.co.id/Portals/0/StaticData/ListedCompanies/LogoEmiten/wskt.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
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
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "WSKT",
                              style: TitleSaham1(),
                            ),
                            Text(
                              "+ 229 (5.3%)",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.red,
                  indicatorPadding: EdgeInsets.only(
                    left: 25,
                    right: 25,
                  ),
                  indicatorWeight: 1,
                  indicatorColor: Colors.black,
                  labelPadding: EdgeInsets.only(
                    left: 8,
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "News",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontFamily: "Nunito"),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Profil",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontFamily: "Nunito"),
                      ),
                    ),
                  ],
                  controller: controller,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.4,
                  child: TabBarView(
                    controller: controller,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 25.0,
                            right: 25,
                            top: 25,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bulan Penghijauan BBCA ?",
                                    maxLines: 2,
                                    style: NamaSaham(),
                                  ),
                                  Text(
                                    "4 Jam yang lalu",
                                    style: LihatSemua(),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Kenapa saham BBCA naik sangat tinggi hari ini? Apa penyebabnya? Simak penjelasannya.",
                                    style: ProfilTitle(),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Divider(
                                height: 15,
                                color: Colors.grey[300],
                                thickness: 1,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Break down EMA 7, Early Trend Down untuk BBCA ? Lorem Ipsum.",
                                    maxLines: 2,
                                    style: NamaSaham(),
                                  ),
                                  Text(
                                    "4 Jam yang lalu",
                                    style: LihatSemua(),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Kenapa saham BBCA naik sangat tinggi hari ini? Apa penyebabnya? Simak penjelasannya.",
                                    style: ProfilTitle(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 25.0,
                            right: 25,
                            top: 25,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Profil Perusahaan",
                                style: TitleSaham1(),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "PT Bank Central Asia Tbk adalah bank swasta terbesar di Indonesia. Bank ini didirikan pada 21 Februari 1957 dengan nama Bank Central Asia NV dan pernah menjadi bagian penting dari Salim Group. Sekarang bank ini dimiliki oleh salah satu grup produsen rokok terbesar keempat di Indonesia, Djarum.",
                                maxLines: 10,
                                style: ProfilData(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => _modalBottomSheetMenuBayar(),
                      // Navigator.of(context, rootNavigator: true).push(
                      //   PageTransition(
                      //     type: PageTransitionType.fade,
                      //     child: Jual(),
                      //   ),
                      // );
                      // },
                      child: Container(
                        child: Center(
                          child: Text(
                            "Jual",
                            style: TextStyle(
                              color: Colors.green,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        height: 45,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          // color: Color(
                          //   0xff00aa13,
                          // ),
                          border: Border.all(
                            color: Color(
                              0xff00aa13,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context, rootNavigator: true).push(
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: Beli(),
                          ),
                        );
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            "Beli",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        height: 45,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(
                                0xff008066,
                              ),
                              Color(
                                0xff87DECD,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // child: Center(
                // child: Container(
                //   child: Center(
                //     child: Text(
                //       "Beli / Jual",
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontFamily: "Nunito",
                //         fontWeight: FontWeight.bold,
                //         fontSize: 18,
                //       ),
                //     ),
                //   ),
                //   height: 45,
                //   width: MediaQuery.of(context).size.width / 1,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8),
                //     color: Color(
                //       0xff00aa13,
                //     ),
                //   ),
                // ),
                // ),
              ),
            ),
          ),
        ],
      ),
      //       }
      //     } else if (snapshot.hasError) {
      //       return Text("${snapshot.error}");
      //     }
      //     return SpinKitFadingCube(
      //       color: Color(0xff134074),
      //     );
      //   },
      // ),
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
            height: 430.0,
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
                            "Detail Jual",
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
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "PGAS",
                            style: ProfilData(),
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
                      Text(
                        "Perusahaan Gas Negara Tbk",
                        style: ProfilTitle(),
                      ),
                      Divider(
                        height: 15,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jumlah Lot",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "160",
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
                            "Total Return",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "Rp. 223.800",
                            style: ProfilData(color: Color(0xff00aa13)),
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
                            "Harga saat ini",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "Rp. 112",
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
                            "Harga rata rata",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "Rp. 85.000",
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
                            "Total Nilai",
                            style: ProfilTitle(),
                          ),
                          Text(
                            "Rp. 11.300",
                            style: TitleSaham1(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context, rootNavigator: true).push(
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: Jual(),
                            ),
                          );
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "Jual",
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
                            color: Colors.red[400],
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
