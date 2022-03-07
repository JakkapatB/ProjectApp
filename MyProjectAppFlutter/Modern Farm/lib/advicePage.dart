import 'package:flutter/material.dart';

class advicePage extends StatelessWidget {
  const advicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                "แนะนำพืช",
                style: TextStyle(
                    color: Color(0xFF17352E),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Color(0xFFABD793),
              leading: IconButton(
                icon: Icon(Icons.ac_unit_sharp),
                onPressed: () {},
              ),
            ),
            body: Container(
              color: Color(0xFFABD793),
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, int index) {
                    return Card(
                      elevation: 5,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.picture_as_pdf_sharp),
                            title: Text("ชื่อของพืช"),
                            subtitle: Text("ข้อมูลพอสังเขป"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                child: const Text("อ่านต่อ"),
                                onPressed: () {/* ... */},
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            )));
  }
}
