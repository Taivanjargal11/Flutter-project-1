import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Screen0 extends StatefulWidget {
  @override
  State<Screen0> createState() => _Screen0State();
}

class _Screen0State extends State<Screen0> {
  String _email = "";
  String _password = "";
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    // TODO: implement initState
    Firebase.initializeApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

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
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
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
                            onChanged: (value) {
                              _email = value;
                            },
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
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 0),
                          child: TextFormField(
                            onChanged: (value) {
                              _password = value;
                            },
                            keyboardType: TextInputType.emailAddress,
                            textAlign: TextAlign.justify,
                            decoration:
                            InputDecoration(hintText: 'Password'),

                          ),
                        ),

                        Container(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  '/Forget_Password',
                                );
                              },
                              child: const Text(
                                'Forget password!',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
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
                                backgroundColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.black),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0))),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    child: TextButton(
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      onPressed: () async {
                                        final _newuser = await _auth
                                            .createUserWithEmailAndPassword(
                                                email: _email,
                                                password: _password);
                                        if (_newuser != null) {
                                          Navigator.pushNamed(
                                            context,
                                            '/product_List',
                                          );
                                        } else {
                                          print("Aldaa");
                                        }
                                      },
                                    ),
                                  )
                                ],
                              )),
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "Don't have an account ?",
                              ),
                            ),
                            Expanded(
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        '/Signup_Screen',
                                      );
                                    },
                                    child: Text(
                                      "Sign-up",
                                      style: TextStyle(color: Colors.grey),
                                    ))),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                                "-----------------Or login with-----------------"),
                          ],
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const <Widget>[
                              IconButton(
                                  icon: const Icon(
                                    Icons.mail_outline,
                                    size: 50,
                                  ),
                                  tooltip: 'E-Mail',
                                  onPressed: null),
                              IconButton(
                                  icon: const Icon(
                                    Icons.facebook,
                                    size: 50,
                                  ),
                                  tooltip: 'Facebook',
                                  onPressed: null),
                            ],
                          ),
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
    //   Scaffold(
    //   backgroundColor: Colors.yellow,
    //   appBar: AppBar(
    //     title: const Text('This is Screen 0'),
    //   ),
    //   body: Center(
    //       child: Column(
    //         children: [
    //           ElevatedButton(
    //             child: const Text('Go to Screen 1'),
    //             onPressed: (){
    //               Navigator.pushNamed(context,'First Screen',);
    //             },
    //           ),
    //           ElevatedButton(
    //             child: const Text('Go to Screen 2'),
    //             onPressed: (){
    //               Navigator.pushNamed(context,'Second Screen',);
    //             },
    //           ),
    //         ],
    //       )
    //   ), // This trailing comma makes auto-formatting nicer for build methods.
    // );
  }
}
