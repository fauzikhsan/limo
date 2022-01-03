import 'package:flutter/material.dart';
import 'package:zetproject/screen/home/bottom.dart';
import 'package:zetproject/screen/logindll/signUp.dart';
import 'package:animate_do/animate_do.dart';

class SignInEmail extends StatefulWidget {
  const SignInEmail({Key? key}) : super(key: key);

  @override
  _SignInEmailState createState() => _SignInEmailState();
}

class _SignInEmailState extends State<SignInEmail>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  Widget _animatedButton() {
    return Container(
      height: 70,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(
              color: Color(0x80000000),
              blurRadius: 12.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff33ccff),
              Color(0xffff99cc),
            ],
          )),
      child: Center(
        child: Text(
          'Press',
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  TextEditingController _txtEmail = TextEditingController(text: '');
  TextEditingController _txtPassword = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 35.0,
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Masuk",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                          ElasticIn(
                            delay: Duration(milliseconds: 500),
                            duration: Duration(milliseconds: 1000),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: Color(0xff16db65),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 70),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 25.0,
                          right: 25,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r'^[\w-\.]+@([\w-]+\.)[\w]{2,4}$')
                                        .hasMatch(value)) {
                                  return "Enter correct email";
                                } else {
                                  return null;
                                }
                              },
                              // validator: (val) =>
                              //     !isEmail(val) ? "Invalid Email" : null,
                              controller: _txtEmail,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  color: Color(
                                    0xff058c42,
                                  ),
                                ),
                                labelText: "Email",
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Poppins',
                                  backgroundColor: Color(
                                    0xffffffff,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 25.0,
                          right: 25,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r'^[\w-\.]+@([\w-]+\.)[\w]{2,4}$')
                                        .hasMatch(value)) {
                                  return "Enter correct email";
                                } else {
                                  return null;
                                }
                              },
                              // validator: (val) =>
                              //     !isEmail(val) ? "Invalid Email" : null,
                              controller: _txtPassword,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color(
                                    0xff058c42,
                                  ),
                                ),
                                labelText: "Password",
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        right: 25,
                        top: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(""),
                          Text(
                            "Lupa password ?",
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        right: 25,
                        top: 70,
                      ),
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
                              'Masuk',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ),
                          );
                        },
                        child: RichText(
                          text: TextSpan(
                            text: "Belum punya akun?",
                            style: TextStyle(color: Colors.black, fontSize: 13),
                            children: <TextSpan>[
                              TextSpan(
                                text: '  Daftar',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                  color: Color(
                                    0xff058c42,
                                  ),
                                  fontSize: 13,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                        top: 50,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElasticIn(
                            delay: Duration(milliseconds: 1000),
                            duration: Duration(milliseconds: 1000),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: Color(0xff16db65),
                            ),
                          ),
                          Text(
                            "",
                            style: TextStyle(
                              color: Color(
                                0xff00aa13,
                              ),
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ElasticIn(
                  delay: Duration(milliseconds: 500),
                  duration: Duration(milliseconds: 1000),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 200.0,
                      top: 20,
                    ),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Color(
                        0xff058c42,
                      ),
                    ),
                  ),
                ),
                ElasticIn(
                  delay: Duration(milliseconds: 100),
                  duration: Duration(milliseconds: 1000),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 120.0,
                        top: 570,
                      ),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Color(
                          0xff00aa13,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
