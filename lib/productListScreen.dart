import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ui/fruitDataModel.dart';

// import 'package:read_json_file/fruitDataModel.dart';
// import 'package:read_json_file/fruitDataModel.dart';
import 'package:flutter/services.dart' as rootBundle;

class productListScreen extends StatefulWidget {
  @override
  State<productListScreen> createState() => _productListScreen();
}

class _productListScreen extends State<productListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('Product List'),
        ),
        body: FutureBuilder(
          future: ReadJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(child: Text("${data.error}"));
            } else if (data.hasData) {
              var items = data.data as List<fruitDataModel>;
              return ListView.builder(
                  itemCount: items == null ? 0 : items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              child: Image(
                                image: NetworkImage(
                                    items[index].imgurl.toString()),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Expanded(
                                child: Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 8, right: 8),
                                      child: TextButton(
                                        child: Text(
                                          items[index].name.toString(),
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, '/product_detail',
                                              arguments: {
                                                "detail": items[index]
                                                    .family.toString()

                                              });
                                        },
                                      )),
                                  // Padding(
                                  //   padding: EdgeInsets.only(left: 8, right: 8),
                                  //   child: Text(items[index].price.toString()),
                                  // )
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }

  Future<List<fruitDataModel>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('jsonfile/fruitData.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => fruitDataModel.fromJson(e)).toList();
  }
}
