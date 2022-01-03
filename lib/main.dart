import 'package:flutter/material.dart';
import 'package:zetproject/controller/onboard.dart';
import 'package:zetproject/screen/onboarding/onBoardingPage.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      home: LearnFlutter(),
    );
  }
}

ThemeData _configureThemeData() {
  return ThemeData(
      textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.black,
            fontFamily: "Poppins",
            fontSize: 20,
            fontWeight: FontWeight.bold,
            // fontSize: 35.0,
            // height: 0.8,
            // color: Colors.red,
            // fontWeight: FontWeight.w700),
          ),
          subtitle1: TextStyle(fontSize: 35),
          subtitle2: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
          bodyText1: TextStyle(fontSize: 15, color: Colors.white),
          bodyText2: TextStyle(fontSize: 12, color: Colors.white)));
}
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
