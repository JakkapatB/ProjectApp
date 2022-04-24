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
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
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
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain, // otherwise the logo will be tiny
                      child: Image.network(
                        "assets/images/031.png",
                        // width: 2,
                        // height: 1,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.contain, // otherwise the logo will be tiny
                    child: Image.network(
                      "assets/images/031.png",
                      // width: 2,
                      // height: 1,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Text("testtt",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.contain, // otherwise the logo will be tiny
                    child: Image.network(
                      "assets/images/031.png",
                      // width: 2,
                      // height: 1,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Text("testtt",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.contain, // otherwise the logo will be tiny
                    child: Image.network(
                      "assets/images/031.png",
                      // width: 2,
                      // height: 1,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Text("testtt",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}