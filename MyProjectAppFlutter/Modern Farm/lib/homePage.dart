import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Modern Farm",
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
      body: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            height: size.height * 0.5,
            child: Stack(
              children: <Widget>[
                Container(
                  height: size.height * 0.35 - 27,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(36),
                        topRight: Radius.circular(36),
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  child: Text(
                    'ยอดคงเหลือ',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 25,
                      color: const Color(0xff17352e),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(120, 85, 100, 150),
                  child: Text(
                    '\$ 1,200,000',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 22,
                      color: const Color(0xff27273d),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(240, 140, 15, 20),
                  child: Text(
                    'ขาดทุน',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 20,
                      color: const Color(0xff17352e),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 140, 240, 20),
                  child: Text(
                    'กำไร',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 20,
                      color: const Color(0xff17352e),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 190, 20, 20),
                  child: Text(
                    '12354000 \$',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 18,
                      color: const Color(0xff5dd267),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(240, 190, 20, 20),
                  child: Text(
                    '0 \$',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 18,
                      color: const Color(0xffff4167),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 35.0, 150.0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: Image.asset('assets/images/01.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 275, 200, 20),
                  child: Text(
                    'รายการล่าสุด',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 18,
                      color: const Color(0xff17352e),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  alignment: Alignment(20, 1.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Card(
                        elevation: 10,
                        margin: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 5),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                "รายการ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                "วัน/เดือน/ปี",
                                style: TextStyle(
                                  color: Color(0xff107C10),
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              leading: CircleAvatar(
                                radius: 32,
                                backgroundColor: Color(0xFF96D587),
                                child: FittedBox(
                                    child: Text(
                                  "1200",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Ubuntu',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment(20, 1.54),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Card(
                        elevation: 10,
                        margin: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 5),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                "รายการ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                "วัน/เดือน/ปี",
                                style: TextStyle(
                                  color: Color(0xff107C10),
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              leading: CircleAvatar(
                                radius: 32,
                                backgroundColor: Color(0xFF96D587),
                                child: FittedBox(
                                    child: Text(
                                  "8200",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Ubuntu',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment(20, 2.07),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Card(
                        elevation: 10,
                        margin: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 5),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                "รายการ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                "วัน/เดือน/ปี",
                                style: TextStyle(
                                  color: Color(0xff107C10),
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              leading: CircleAvatar(
                                radius: 32,
                                backgroundColor: Color(0xFF96D587),
                                child: FittedBox(
                                    child: Text(
                                  "1500",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Ubuntu',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
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
      ]),
      backgroundColor: Color(0xFFABD793),
    );
  }
}
