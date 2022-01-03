import 'package:flutter/material.dart';
import 'package:zetproject/screen/logindll/signInemail.dart';
import 'package:zetproject/screen/quest/choose3Stocks.dart';

import 'package:animate_do/animate_do.dart';

class SignUp extends StatefulWidget {
  // const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with SingleTickerProviderStateMixin {
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
  TextEditingController _nama = TextEditingController(text: '');
  TextEditingController _noHp = TextEditingController(text: '');
  TextEditingController _confirmPassword = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Daftar",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                          ElasticIn(
                            delay: Duration(
                              milliseconds: 400,
                            ),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: Color(0xff16db65),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
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
                            controller: _nama,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person_outline_outlined,
                                color: Color(
                                  0xff058c42,
                                ),
                              ),
                              labelText: "Nama lengkap",
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
                  Container(
                    margin: EdgeInsets.only(top: 10),
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
                            controller: _noHp,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.phone_enabled_outlined,
                                color: Color(
                                  0xff058c42,
                                ),
                              ),
                              labelText: "No Hp",
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
                  Container(
                    margin: EdgeInsets.only(top: 10),
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
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
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
                  Container(
                    margin: EdgeInsets.only(top: 10),
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
                            controller: _confirmPassword,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Color(
                                  0xff058c42,
                                ),
                              ),
                              labelText: "Konfrimasi Password",
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
                      top: 50,
                    ),
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
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Choose3Stocks(),
                              ),
                            );
                          },
                          child: Text(
                            'Daftar',
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
                            builder: (context) => SignInEmail(),
                          ),
                        );
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Sudah punya akun ?",
                          style: TextStyle(color: Colors.black, fontSize: 13),
                          children: <TextSpan>[
                            TextSpan(
                              text: '  Masuk',
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
                ],
              ),
              BounceInDown(
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
            ],
          ),
        ),
      ),
    );
  }
}
