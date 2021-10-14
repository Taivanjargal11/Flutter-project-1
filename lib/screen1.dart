import 'package:flutter/material.dart';
import 'screen2.dart';
import 'package:passwordfield/passwordfield.dart';

class Screen1 extends StatefulWidget {
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/image/bg.png"),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Sign-up',
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                      height: 100,
                                      width: 100,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape:
                                                new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      1000),
                                            ),
                                          ),
                                          onPressed: null,
                                          child: Icon(Icons.camera_alt))),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Name',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      )),
                                  TextFormField(
                                    keyboardType:
                                        TextInputType.emailAddress,
                                    textAlign: TextAlign.justify,
                                    decoration: InputDecoration(
                                        hintText: 'Your name'),
                                  ),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Email',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      )),
                                  TextFormField(
                                    textAlign: TextAlign.justify,
                                    decoration: InputDecoration(
                                        hintText: 'Your email-id'),
                                  ),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Contact no.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      )),
                                  TextFormField(
                                    textAlign: TextAlign.justify,
                                    decoration: InputDecoration(
                                        hintText: 'Your contact number'),
                                  ),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Password',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      )),
                                  PasswordField(
                                    color: Colors.blue,
                                    passwordConstraint: r'.*[@$#.*].*',
                                    inputDecoration: PasswordDecoration(),
                                    hintText: '',
                                    border: PasswordBorder(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.blue.shade100,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.blue.shade100,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide:
                                        BorderSide(width: 2, color: Colors.red.shade200),
                                      ),
                                    ),
                                    errorMessage:
                                    'must contain special character either . * @ # \$',
                                  ),
                                  Container(
                                    width: 300,
                                    height: 50,
                                    margin: EdgeInsets.only(top: 15),
                                    child: OutlinedButton(
                                        onPressed: null,
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateColor
                                                  .resolveWith((states) =>
                                                      Colors.black),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0))),
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              child: const Text(
                                                "Submit",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        )),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: TextButton(
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                  context,
                                                  '/',
                                                );
                                              },
                                              child: Text(
                                                "Back to login",style: TextStyle(
                                                color: Colors.grey
                                              ),
                                              ))),
                                      SizedBox(
                                        height: 200,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
    //   backgroundColor: Colors.blue,
    //   appBar: AppBar(
    //     title: const Text('This is Screen 1'),
    //   ),
    //   body: const Center(
    //       child: Text('')
    //   ), // This trailing comma makes auto-formatting nicer for build methods.
    // );
  }
}
