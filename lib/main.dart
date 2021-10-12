import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Log in'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Container(
            child: Stack(
              children: [
                Image.asset("assets/image/bg.png"),
                Column(
                  children: [
                    SizedBox(
                      height: 280,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Log-in',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: 20),
                              child: Text(
                                'Email',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              )),
                          Container(
                            height: 50,

                            child: TextFormField(

                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.justify,
                              decoration:
                                  InputDecoration(hintText: 'mail@website.com'),
                            ),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: 20),
                              child: Text(
                                'Password',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              )),
                          Container(
                            height: 50,
                            child: TextField(
                              textAlign: TextAlign.justify,
                              decoration:
                                  InputDecoration(hintText: 'Min. 7 character'),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: TextButton(
                                onPressed: null,
                                child: const Text(
                                  'Forget password!',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 50,
                            margin: EdgeInsets.only(top: 15),
                            child: OutlinedButton(
                                onPressed: null,
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateColor.resolveWith(
                                          (states) => Colors.black),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0))),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      child: const Text(
                                        "Login",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: Icon(Icons.add),
        // ), // This trailing comma makes auto-formatting nicer for build methods.
      );
    }
  }


}
