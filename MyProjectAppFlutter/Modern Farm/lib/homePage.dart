import 'package:betacode/cardPage.dart';
import 'package:betacode/providers/transction_provider.dart';
import 'package:betacode/providers/transction_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sembast/sembast.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Provider.of<TransactionProvider>(context, listen: false).initData();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Modern Farm",
          style: TextStyle(
              color: Color.fromARGB(255, 238, 246, 244),
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF006400),
        leading: IconButton(
          icon: Icon(Icons.ac_unit_sharp),
          onPressed: () {},
        ),
      ),
      body: Consumer(
        builder: ((context, TransactionProvider provider, child) {
          double sum = 0;
          double income = 0;
          double expense = 0;
          for (int i = 0; i < provider.transactions.length; i++) {
            sum += provider.transactions[i].amount!;
          }
          if (sum > 0) {
            income = sum;
          } else {
            expense = sum;
          }
          return Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          'ยอดคงเหลือ',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 25,
                            color: const Color(0xff17352e),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ))
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            sum.toString() + " ฿",
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 22,
                              color: Color.fromARGB(255, 16, 101, 3),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                margin: EdgeInsets.all(22),
                height: size.height * 0.35 - 27,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.white.withOpacity(0.5), BlendMode.dstATop),
                      image: AssetImage('assets/images/01.png'),
                      fit: BoxFit.cover,
                    ),
                    color: Color.fromARGB(255, 241, 245, 242),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 124, 122, 122),
                        blurRadius: 4,
                        offset: Offset(5, 3), // Shadow position
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    )),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          'กำไร',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 20,
                            color: Color.fromARGB(255, 23, 53, 24),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        )),
                        Expanded(
                            child: Text(
                          income.toString() + " ฿",
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 20,
                            color: Color.fromARGB(255, 54, 141, 57),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ))
                      ],
                    ),
                  ],
                ),
                margin: EdgeInsets.all(22),
                height: size.height * 0.12 - 27,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 212, 214, 212),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 122, 124, 122),
                        blurRadius: 4,
                        offset: Offset(5, 3), // Shadow position
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    )),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          'ขาดทุน',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 20,
                            color: Color.fromARGB(255, 23, 53, 24),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        )),
                        Expanded(
                            child: Text(
                          expense.toString() + " ฿",
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 20,
                            color: Color.fromARGB(255, 221, 72, 59),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ))
                      ],
                    ),
                  ],
                ),
                margin: EdgeInsets.all(22),
                height: size.height * 0.12 - 27,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 212, 214, 212),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 124, 122, 122),
                        blurRadius: 4,
                        offset: Offset(5, 3), // Shadow position
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    )),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                              minimumSize: Size(200, 60),
                              primary: Color.fromARGB(255, 71, 207, 203),
                              onPrimary: Color.fromARGB(255, 16, 16, 16)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => cardPage()));
                          },
                          child: Text(
                            "แสดงรายการ",
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 15,
                              color: Color.fromARGB(255, 18, 18, 18),
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ],
                  )
                ],
              )
            ],
          );
        }),
      ),
      backgroundColor: Color.fromARGB(255, 222, 236, 228),
    );
  }
}
