import 'package:flutter/material.dart';

class PropductDetails extends StatefulWidget {
  @override
  State<PropductDetails> createState() => _PropductDetails();
}

class _PropductDetails extends State<PropductDetails> {

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    var details=arguments['detail'];


    return Scaffold(
      appBar: AppBar(
        title: const Text('Product detail'),
      ),
      resizeToAvoidBottomInset: false,
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          child: Card(
            child: Column(
              children:<Widget> [
                Text(details[index].toString())

              ],
            ),
          ),
        );

      },itemCount: 5,
      )
    );
  }
}
