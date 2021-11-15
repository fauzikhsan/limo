import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
//import 'package:tetrasaham/Home/home.dart';
//import 'package:tetrasaham/Registrasi/bottom.dart' as prefix0;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:bubble/bubble.dart';
import 'package:zetproject/home/bottom.dart';
import 'package:zetproject/textStyle.dart';
import 'package:zetproject/models.dart' as apitetra;
//import 'package:tetrasaham/Registrasi/Nabung/dashboard.dart';

final ThemeData iOSTheme = new ThemeData(
  primarySwatch: Colors.red,
  primaryColor: Colors.grey[400],
  primaryColorBrightness: Brightness.dark,
);

final ThemeData androidTheme = new ThemeData(
  primarySwatch: Colors.blue,
  accentColor: Colors.green,
);

//const String defaultUserName = "Fauzi Ikhsan";

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return new MaterialApp(
      title: "Arvita Application",
      theme:
          defaultTargetPlatform == TargetPlatform.iOS ? iOSTheme : androidTheme,
      home: new MyHomePage(
        displayname: '',
      ),
    );
  }
}

class AskAnalyst extends StatefulWidget {
  @override
  State createState() => new AskAnalystWindow();
}

class AskAnalystWindow extends State<AskAnalyst> with TickerProviderStateMixin {
  late Future<Arvitareply> futureArvita;
  final List<Msg> _messages = <Msg>[];
  //final List<ArvitaMsg> _arvitamessages = <ArvitaMsg>[];
  late TextEditingController _textController = TextEditingController(text: '');
  bool _isWriting = false;
  // ArvitaWindow({this.animationController});
  late final AnimationController animationController;
  var dataJSON;
  var arvitanya;
  var kodenya;
  var keyword;
  var applepay;

  Future<AskAnalystWindow> getakses() async {
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var uid = prefs.getString('uid');

    //var uid = '1';
    final response =
        await http.get(Uri.https(apitetra.domain, '/arvita/akses', {
      "id": apitetra.idapi,
      "key": apitetra.keyapi,
      "uid": uid,
    }));

    var datasaham = json.decode(response.body);
    var akses = datasaham['akses'];
    if (response.statusCode == 200) {
      if (akses == "1") {
        if (this.mounted) {
          setState(() {
            keyword = datasaham['keyword'];
            applepay = datasaham['applepay'];
          });
          //return datasaham;
        }
      } else {
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
                            top: 150.0,
                            left: 8,
                            right: 8,
                          ),
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
                                    // if (applepay == '1') {
                                    //   if (Platform.isIOS) {
                                    //     //print('is a IOS');
                                    //     Route route = MaterialPageRoute(
                                    //         builder: (context) => LanggananIOS(
                                    //               route: '',
                                    //             ));
                                    //     Navigator.push(context, route);
                                    //   } else if (Platform.isAndroid) {
                                    //     Route route = MaterialPageRoute(
                                    //         builder: (context) => Langganan(
                                    //               route: 'bar',
                                    //             ));
                                    //     Navigator.push(context, route);
                                    //   } else {}
                                    // } else {
                                    //   Route route = MaterialPageRoute(
                                    //       builder: (context) => Langganan(
                                    //             route: 'bar',
                                    //           ));
                                    //   Navigator.push(context, route);
                                    // }
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
      }
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data saham');
    }
    throw Exception('');
  }

  void initState() {
    super.initState();
    getakses();
  }

  @override
  Widget build(BuildContext ctx) {
    return new Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Arvita",
          style: TitlePage(),
        ),
      ),
      body: Stack(
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Flexible(
                child: new ListView.builder(
                  itemBuilder: (_, int index) => _messages[index],
                  itemCount: _messages.length,
                  reverse: true,
                  padding: new EdgeInsets.all(6.0),
                ),
              ),
              new Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                margin:
                    EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
                height: 30,
                child: ListView.builder(
                    itemCount: keyword == null ? 0 : keyword.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, i) {
                      // This next line does the trick.

                      // children: <Widget>[

                      return InkWell(
                        onTap: () {
                          setState(() {
                            _textController.text = keyword[i]["keyword"] + " ";
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 3, right: 3),
                          child: Center(
                            child: Text(
                              keyword[i]['keyword'],
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          height: 30,
                          width: MediaQuery.of(context).size.width / 5,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xff134074),
                                const Color(0xff54749A),
                              ],
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                          ),
                        ),
                      );
                      return OutlineButton(
                        child: new Text(
                          keyword[i]['keyword'],
                          style: TextStyle(
                            color: Color(
                              0xff134074,
                            ),
                          ),
                        ),
                        borderSide: BorderSide(
                          color: Color(
                            0xff134074,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _textController.text = keyword[i]['keyword'] + " ";
                          });
                        },
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(
                            15.0,
                          ),
                        ),
                      );
                    }),
              ),
              new Divider(height: 1.0),
              new Container(
                child: _buildComposer(),
                decoration: new BoxDecoration(color: Theme.of(ctx).cardColor),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45.0, left: 30),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //@override
  Widget _buildComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Theme.of(context).accentColor),
      child: new Container(
          margin: const EdgeInsets.symmetric(horizontal: 9.0),
          child: new Row(
            children: <Widget>[
              new Flexible(
                child: new TextField(
                  controller: _textController,
                  onChanged: (String txt) {
                    setState(() {
                      _isWriting = txt.length > 0;
                    });
                  },
                  //onSubmitted: _submitMsg,
                  decoration: new InputDecoration.collapsed(
                    hintText: "Potensi BBCA",
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
              new Container(
                  margin: new EdgeInsets.symmetric(horizontal: 3.0),
                  child: new IconButton(
                    icon: new Icon(
                      Icons.send,
                      color: Color(0xff134074),
                    ),
                    onPressed: _isWriting
                        ? () => _submitMsg(_textController.text)
                        : null,
                  )),
            ],
          ),
          decoration: Theme.of(context).platform == TargetPlatform.iOS
              ? new BoxDecoration(
                  border: new Border(
                    top: new BorderSide(color: Colors.brown),
                  ),
                )
              : null),
    );
  }

  void _submitMsg(String txt) {
    // Msg msg = new Msg(
    //   user: 'Jaenal',
    //   txt: txt,
    //   align: 'right',
    //   kode: 'no',
    //   animationController: new AnimationController(
    //       vsync: this, duration: new Duration(milliseconds: 500)),
    //   txtarvita: '',
    //   userarvita: '',
    //   // userarvita:'Arvita',
    //   // txtarvita: 'arvitanya',
    //   // animationControllerarvita: new AnimationController(
    //   //     vsync: this, duration: new Duration(milliseconds: 1000)),
    // );

    Future<Arvitareply> fetchData(String pesan) async {
      //var keywordnya = pesan;
      var keywordnya = pesan;
      WidgetsFlutterBinding.ensureInitialized();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var ambiluid = prefs.getString('uid');
      //var ambiluid = '1';
      final response = await http.get(Uri.https(apitetra.domain, '/arvita', {
        "id": apitetra.idapi,
        "key": apitetra.keyapi,
        "pesan": keywordnya,
        "uid": ambiluid,
      })
          // '' +
          //     domain +
          //     '/arvita/?id=' +
          //     idapi +
          //     "&key=" +
          //     keyapi +
          //     "&pesan=" +
          //     keywordnya +
          //     "&uid=" +
          //     ambiluid +
          //     "",
          );
      var datakata = json.decode(response.body);
      print(datakata);
      if (response.statusCode == 200) {
        //if (this.mounted) {
        setState(() {
          dataJSON = json.decode(response.body);
          arvitanya = dataJSON['result'];
          kodenya = dataJSON['kode'];
          //data++;
          //namanya  = prefs.getString('displayname');
        });

        // Msg msg = new Msg(
        //   user: 'Arvita',
        //   txt: arvitanya,
        //   align: 'left',
        //   kode: kodenya,
        //   animationController: new AnimationController(
        //       vsync: this, duration: new Duration(milliseconds: 500)),
        //   // userarvita:'Arvita',
        //   // txtarvita: 'arvitanya',
        //   // animationControllerarvita: new AnimationController(
        //   //     vsync: this, duration: new Duration(milliseconds: 1000)),
        // );
        setState(() {
          // _messages.insert(0, msg);
          //_messages.insert(0, msg2);
        });
        // msg.animationController.forward();
        // }
        return Arvitareply.fromJson(datakata);
      } else {
        throw Exception('Failed to load data saham');
      }
    }

    String pesan = _textController.text;
    futureArvita = fetchData(pesan);
    print(arvitanya);
    _textController.clear();
    setState(() {
      _isWriting = false;
    });
    setState(() {
      // _messages.insert(0, msg);
      //_messages.insert(0, msg2);
    });
    // msg.animationController.forward();
    //msg2.animationControllerarvita.forward();
  }

  @override
  void dispose() {
    for (Msg msg in _messages) {
      msg.animationController.dispose();
      //msg2.animationControllerarvita.dispose();
    }
    // for (ArvitaMsg msg2 in _arvitamessages) {
    //   msg2.animationControllerarvita.dispose();
    // }
    super.dispose();
  }
}

class Arvitareply {
  final String result;

  Arvitareply({
    required this.result,
  });

  factory Arvitareply.fromJson(Map<String, dynamic> json) {
    return Arvitareply(
      result: json['result'],
    );
  }
}

class Msg extends StatelessWidget {
  final String txt;
  final String user;
  final AnimationController animationController;
  final String userarvita;
  final String txtarvita;
  final String align;
  final String kode;

  final AnimationController animationControllerarvita;
  Msg(
      {required this.user,
      required this.txt,
      required this.animationController,
      required this.txtarvita,
      required this.userarvita,
      required this.animationControllerarvita,
      required this.align,
      required this.kode});

  sisi(String align) {
    if (align == 'left') {
      return BubbleNip.leftTop;
    } else if (align == 'right') {
      return BubbleNip.rightTop;
    }
  }

  warna(String align) {
    if (align == 'left') {
      return Color.fromRGBO(225, 255, 255, 1.0);
    } else if (align == 'right') {
      return Color.fromRGBO(225, 255, 199, 1.0);
    }
  }

  @override
  Widget build(BuildContext ctx) {
    // double pixelRatio = MediaQuery.of(ctx).devicePixelRatio;
    // double px = 1 / pixelRatio;
    return (SizeTransition(
      sizeFactor: new CurvedAnimation(
          parent: animationController, curve: Curves.easeIn),
      axisAlignment: 0.0,
      child: new Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Bubble(
                nip: sisi(align),
                color: warna(align),
                alignment: Alignment.topRight,
                elevation: 1,
                child: Text(
                  txt,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      // color: akumfontclass(snapshot.data.akumclass),
                      fontSize: 14,
                      fontFamily: "Poppins"),
                )),
          ],
        ),
      ),
    ));
  }
}
