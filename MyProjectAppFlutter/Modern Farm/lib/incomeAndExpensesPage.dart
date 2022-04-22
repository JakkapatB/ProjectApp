import 'dart:ffi';
import 'dart:ui';

import 'package:betacode/models/Transactions.dart';
import 'package:betacode/providers/transction_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class incomeAndExpensesPage extends StatelessWidget {
  const incomeAndExpensesPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final amountController = TextEditingController();
    DateTime? newDate;
    var size = MediaQuery.of(context).size;
    DateTime date = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.fromLTRB(170, 0, 0, 0),
          child: Text(
            "ยอดคงเหลือ",
            style: TextStyle(
                color: Color(0xFF17352E),
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.ac_unit_sharp),
          color: Colors.black,
          onPressed: () {},
        ),
      ),
      body: Consumer(
        builder: (context, TransactionProvider provider, child) {
          double sum = 0;
          for (int i = 0; i < provider.transactions.length; i++) {
            sum += provider.transactions[i].amount!;
          }
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Container(
                      height: 700 * 0.8,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: size.height * 0.2 - 27,
                            decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(200, 20, 0, 0),
                            child: Text(
                              sum.toString(),
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 25,
                                color: const Color(0xff17352e),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment(0, -0.68),
                            child: Padding(
                              padding: EdgeInsets.all(1.0),
                              child: Container(
                                height: size.height * 0.1 - 27,
                                decoration: BoxDecoration(
                                    color: Color(0xFF17352E),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(40),
                                      bottomRight: Radius.circular(40),
                                    )),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(100, 145, 100, 10),
                            child: Text(
                              'บันทึกรายรับรายจ่าย',
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 20,
                                color: const Color(0xff17352e),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(50, 200, 50, 0),
                            child: TextField(
                                controller: titleController,
                                scrollPadding: EdgeInsets.all(10),
                                decoration: InputDecoration(
                                    labelText: "รายการ",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))))),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(50, 290, 50, 0),
                            child: TextField(
                                controller: amountController,
                                keyboardType: TextInputType.number,
                                scrollPadding: EdgeInsets.all(10),
                                decoration: InputDecoration(
                                    labelText: "จำนวนเงิน",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))))),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(60, 380, 50, 0),
                            child: ElevatedButton(
                              child: Text('เลือก วัน/เดือน/ปี'),
                              onPressed: () async {
                                newDate = await showDatePicker(
                                  context: context,
                                  initialDate: date,
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100),
                                );
                                if (newDate == null) return;
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff3CB371),
                                onPrimary: Colors.white,
                                minimumSize: Size(400, 40),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(60, 450, 0, 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(165, 40),
                                  primary: Color(0xff5dd267),
                                  onPrimary: Colors.black87),
                              child: Text('รายรับ'),
                              onPressed: () {},
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(60, 500, 0, 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(165, 40),
                                  primary: Color(0xffff4167),
                                  onPrimary: Colors.black87),
                              child: Text('รายจ่าย'),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            alignment: Alignment(5, 4),
                            margin:
                                EdgeInsets.fromLTRB(195.0, 20.0, 0.0, 150.0),
                            child: Image.asset('assets/images/02.png'),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          );
        },
      ),
      backgroundColor: Color(0xFFABD793),
    );
  }
}
