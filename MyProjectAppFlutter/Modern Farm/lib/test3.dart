import 'package:flutter/material.dart';

class test3 extends StatelessWidget {
  const test3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Color(0xFFABD793),
            leading: IconButton(
              icon: Icon(Icons.ac_unit_sharp),
              onPressed: () {},
            ),
            title: const Text('วิธีใช้งาน',
                style: TextStyle(
                    color: Color(0xFF17352E),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold)),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.account_circle_sharp),
                tooltip: 'Go to the next page',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: const Text('Next page'),
                        ),
                        body: const Center(
                          child: Text(
                            'This is the next page',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      );
                    },
                  ));
                },
              ),
            ]),
        body: null);
  }
}
