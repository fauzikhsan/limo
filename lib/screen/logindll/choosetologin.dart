import 'package:flutter/material.dart';
import 'package:zetproject/screen/logindll/signUp.dart';
import 'signInemail.dart';
import 'package:animate_do/animate_do.dart';

class ChoosetoLogin extends StatefulWidget {
  const ChoosetoLogin({Key? key}) : super(key: key);

  @override
  _ChoosetoLoginState createState() => _ChoosetoLoginState();
}

class _ChoosetoLoginState extends State<ChoosetoLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50.0,
            left: 10,
            right: 10,
          ),
          child: Column(
            children: [
              FadeInUp(
                delay: Duration(milliseconds: 1500),
                duration: Duration(milliseconds: 1000),
                child: Image.asset(
                  "images/discover.png",
                  scale: 2.5,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              FadeInUp(
                delay: Duration(milliseconds: 400),
                duration: Duration(milliseconds: 1000),
                child: Text(
                  "Sign In to your account",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              FadeInUp(
                delay: Duration(milliseconds: 1200),
                duration: Duration(milliseconds: 1000),
                child: Container(
                  child: Center(
                    child: Text(
                      "Sign In With Google",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  height: 55,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      13,
                    ),
                    color: Color(
                      0xff058c42,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              FadeInUp(
                delay: Duration(milliseconds: 1400),
                duration: Duration(milliseconds: 1000),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInEmail(),
                        ));
                  },
                  child: Text(
                    "Sign In with email",
                    style: TextStyle(
                      color: Color(
                        0xff058c42,
                      ),
                      fontFamily: "Poppins",
                      fontSize: 16,
                      // fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 180,
              ),
              FadeInUp(
                delay: Duration(milliseconds: 1300),
                duration: Duration(milliseconds: 1000),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account yet ?  ",
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color(
                            0xff058c42,
                          ),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
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
