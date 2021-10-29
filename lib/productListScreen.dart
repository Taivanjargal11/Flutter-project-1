import 'package:flutter/material.dart';

class productListScreen extends StatefulWidget {
  @override
  State<productListScreen> createState() => _productListScreen();
}

class _productListScreen extends State<productListScreen> {
  var fruitData = {
    {
      "genus": "Malus",
      "name": "Apple",
      "id": 6,
      "family": "Rosaceae",
      "order": "Rosales",
      "nutritions": {
        "carbohydrates": 11.4,
        "protein": 0.3,
        "fat": 0.4,
        "calories": 52,
        "sugar": 10.3
      }
    },
    {
      "genus": "Prunus",
      "name": "Apricot",
      "id": 35,
      "family": "Rosaceae",
      "order": "Rosales",
      "nutritions": {
        "carbohydrates": 3.9,
        "protein": 0.5,
        "fat": 0.1,
        "calories": 15,
        "sugar": 3.2
      }
    },
    {
      "genus": "Musa",
      "name": "Banana",
      "id": 1,
      "family": "Musaceae",
      "order": "Zingiberales",
      "nutritions": {
        "carbohydrates": 22,
        "protein": 1,
        "fat": 0.2,
        "calories": 96,
        "sugar": 17.2
      }
    },
    {
      "genus": "Fragaria",
      "name": "Blueberry",
      "id": 33,
      "family": "Rosaceae",
      "order": "Rosales",
      "nutritions": {
        "carbohydrates": 5.5,
        "protein": 0,
        "fat": 0.4,
        "calories": 29,
        "sugar": 5.4
      }
    },
    {
      "genus": "Prunus",
      "name": "Cherry",
      "id": 9,
      "family": "Rosaceae",
      "order": "None",
      "nutritions": {
        "carbohydrates": 12,
        "protein": 1,
        "fat": 0.3,
        "calories": 50,
        "sugar": 8
      }
    },
    {
      "genus": "Durio",
      "name": "Durian",
      "id": 60,
      "family": "Malvaceae",
      "order": "Malvales",
      "nutritions": {
        "carbohydrates": 27.1,
        "protein": 1.5,
        "fat": 5.3,
        "calories": 147,
        "sugar": 6.75
      }
    },
    {
      "genus": "Vitis",
      "name": "Grapes",
      "id": 47,
      "family": "Vitaceae",
      "order": "Vitales",
      "nutritions": {
        "carbohydrates": 18.1,
        "protein": 0.72,
        "fat": 0.16,
        "calories": 69,
        "sugar": 15.48
      }
    },
    {
      "genus": "Psidium",
      "name": "Guava",
      "id": 37,
      "family": "Myrtaceae",
      "order": "Myrtales",
      "nutritions": {
        "carbohydrates": 14,
        "protein": 2.6,
        "fat": 1,
        "calories": 68,
        "sugar": 9
      }
    },
    {
      "genus": "Citrus",
      "name": "Lemon",
      "id": 26,
      "family": "Rutaceae",
      "order": "Sapindales",
      "nutritions": {
        "carbohydrates": 9,
        "protein": 1.1,
        "fat": 0.3,
        "calories": 29,
        "sugar": 2.5
      }
    },
    {
      "genus": "Citrus",
      "name": "Lime",
      "id": 44,
      "family": "Rutaceae",
      "order": "Sapindales",
      "nutritions": {
        "carbohydrates": 8.4,
        "protein": 0.3,
        "fat": 0.1,
        "calories": 25,
        "sugar": 1.7
      }
    },
    {
      "genus": "Mangifera",
      "name": "Mango",
      "id": 27,
      "family": "Anacardiaceae",
      "order": "Sapindales",
      "nutritions": {
        "carbohydrates": 15,
        "protein": 0.82,
        "fat": 0.38,
        "calories": 60,
        "sugar": 13.7
      }
    },
    {
      "genus": "Cucumis",
      "name": "Melon",
      "id": 41,
      "family": "Cucurbitaceae",
      "order": "Cucurbitaceae",
      "nutritions": {
        "carbohydrates": 8,
        "protein": 0,
        "fat": 0,
        "calories": 34,
        "sugar": 8
      }
    },
    {
      "genus": "Citrus",
      "name": "Orange",
      "id": 2,
      "family": "Rutaceae",
      "order": "Sapindales",
      "nutritions": {
        "carbohydrates": 8.3,
        "protein": 1,
        "fat": 0.2,
        "calories": 43,
        "sugar": 8.2
      }
    },
    {
      "genus": "Carica",
      "name": "Papaya",
      "id": 42,
      "family": "Caricaceae",
      "order": "Caricacea",
      "nutritions": {
        "carbohydrates": 11,
        "protein": 0,
        "fat": 0.4,
        "calories": 43,
        "sugar": 1
      }
    },
    {
      "genus": "Pyrus",
      "name": "Pear",
      "id": 4,
      "family": "Rosaceae",
      "order": "Rosales",
      "nutritions": {
        "carbohydrates": 15,
        "protein": 0.4,
        "fat": 0.1,
        "calories": 57,
        "sugar": 10
      }
    },
    {
      "genus": "Diospyros",
      "name": "Persimmon",
      "id": 52,
      "family": "Ebenaceae",
      "order": "Rosales",
      "nutritions": {
        "carbohydrates": 18,
        "protein": 0,
        "fat": 0,
        "calories": 81,
        "sugar": 18
      }
    },
    {
      "genus": "Ananas",
      "name": "Pineapple",
      "id": 10,
      "family": "Bromeliaceae",
      "order": "Poales",
      "nutritions": {
        "carbohydrates": 13.12,
        "protein": 0.54,
        "fat": 0.12,
        "calories": 50,
        "sugar": 9.85
      }
    },
    {
      "genus": "Rubus",
      "name": "Raspberry",
      "id": 23,
      "family": "Rosaceae",
      "order": "Rosales",
      "nutritions": {
        "carbohydrates": 12,
        "protein": 1.2,
        "fat": 0.7,
        "calories": 53,
        "sugar": 4.4
      }
    },
    {
      "genus": "Fragaria",
      "name": "Strawberry",
      "id": 3,
      "family": "Rosaceae",
      "order": "Rosales",
      "nutritions": {
        "carbohydrates": 5.5,
        "protein": 0.8,
        "fat": 0.4,
        "calories": 29,
        "sugar": 5.4
      }
    },
    {
      "genus": "Solanum",
      "name": "Tomato",
      "id": 5,
      "family": "Solanaceae",
      "order": "Solanales",
      "nutritions": {
        "carbohydrates": 3.9,
        "protein": 0.9,
        "fat": 0.2,
        "calories": 74,
        "sugar": 2.6
      }
    },
    {
      "genus": "Citrullus",
      "name": "Watermelon",
      "id": 25,
      "family": "Cucurbitaceae",
      "order": "Cucurbitales",
      "nutritions": {
        "carbohydrates": 8,
        "protein": 0.6,
        "fat": 0.2,
        "calories": 30,
        "sugar": 6
      }
    }
  };

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
              Column(
                children: [
                  ListView.builder(
                    itemCount: fruitData.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(items[index]),
                      );
                    },
                  )

                  //   SizedBox(
                  //     height: 60,
                  //   ),
                  //   Container(
                  //     padding: EdgeInsets.only(left: 20),
                  //     alignment: Alignment.bottomLeft,
                  //     child: Text(
                  //       'Log-in',
                  //       style:
                  //           TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  //     ),
                  //   ),
                  //   Padding(
                  //     padding: const EdgeInsets.symmetric(horizontal: 40),
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       children: <Widget>[
                  //         Container(
                  //             alignment: Alignment.topLeft,
                  //             margin: EdgeInsets.only(top: 20),
                  //             child: Text(
                  //               'Email',
                  //               style: TextStyle(
                  //                   fontWeight: FontWeight.bold, fontSize: 17),
                  //             )),
                  //         Container(
                  //           height: 50,
                  //           child: TextFormField(
                  //             keyboardType: TextInputType.emailAddress,
                  //             textAlign: TextAlign.justify,
                  //             decoration:
                  //                 InputDecoration(hintText: 'mail@website.com'),
                  //           ),
                  //         ),
                  //         Container(
                  //             alignment: Alignment.topLeft,
                  //             margin: EdgeInsets.only(top: 20),
                  //             child: Text(
                  //               'Password',
                  //               style: TextStyle(
                  //                   fontWeight: FontWeight.bold, fontSize: 17),
                  //             )),
                  //         Container(
                  //           height: 50,
                  //           child: TextField(
                  //             textAlign: TextAlign.justify,
                  //             decoration:
                  //                 InputDecoration(hintText: 'Min. 7 character'),
                  //           ),
                  //         ),
                  //         Container(
                  //           alignment: Alignment.centerRight,
                  //           child: Padding(
                  //             padding: const EdgeInsets.only(top: 0),
                  //             child: TextButton(
                  //               onPressed: () {
                  //                 Navigator.pushNamed(
                  //                   context,
                  //                   '/Forget_Password',
                  //                 );
                  //               },
                  //               child: const Text(
                  //                 'Forget password!',
                  //                 style: TextStyle(
                  //                     fontWeight: FontWeight.bold,
                  //                     color: Colors.grey),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         Container(
                  //           width: 300,
                  //           height: 50,
                  //           margin: EdgeInsets.only(top: 15),
                  //           child: OutlinedButton(
                  //               onPressed: null,
                  //               style: ButtonStyle(
                  //                 backgroundColor: MaterialStateColor.resolveWith(
                  //                     (states) => Colors.black),
                  //                 shape: MaterialStateProperty.all(
                  //                     RoundedRectangleBorder(
                  //                         borderRadius:
                  //                             BorderRadius.circular(30.0))),
                  //               ),
                  //               child: Stack(
                  //                 children: [
                  //                   Container(
                  //                     child: const Text(
                  //                       "Login",
                  //                       style: TextStyle(
                  //                           fontSize: 20,
                  //                           fontWeight: FontWeight.bold,
                  //                           color: Colors.white),
                  //                     ),
                  //                   )
                  //                 ],
                  //               )),
                  //         ),
                  //         Row(
                  //           children: <Widget>[
                  //             Expanded(
                  //               child: Text(
                  //                 "Don't have an account ?",
                  //               ),
                  //             ),
                  //             Expanded(
                  //                 child: TextButton(
                  //                     onPressed: () {
                  //                       Navigator.pushNamed(
                  //                         context,
                  //                         '/Signup_Screen',
                  //                       );
                  //                     },
                  //                     child: Text(
                  //                       "Sign-up",
                  //                       style: TextStyle(color: Colors.grey),
                  //                     ))),
                  //           ],
                  //         ),
                  //         Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: const <Widget>[
                  //             Text(
                  //                 "-----------------Or login with-----------------"),
                  //           ],
                  //         ),
                  //         Container(
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //             children: const <Widget>[
                  //               IconButton(
                  //                   icon: const Icon(
                  //                     Icons.mail_outline,
                  //                     size: 50,
                  //                   ),
                  //                   tooltip: 'E-Mail',
                  //                   onPressed: null),
                  //               IconButton(
                  //                   icon: const Icon(
                  //                     Icons.facebook,
                  //                     size: 50,
                  //                   ),
                  //                   tooltip: 'Facebook',
                  //                   onPressed: null),
                  //             ],
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
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
