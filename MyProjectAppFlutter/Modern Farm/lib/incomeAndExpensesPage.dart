// import 'dart:ffi';
import 'dart:ui';

import 'package:betacode/models/Transactions.dart';
import 'package:betacode/providers/transction_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class incomeAndExpensesPage extends StatelessWidget {
  const incomeAndExpensesPage({Key? key}) : super(key: key);

  static DateTime selectDate = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));

    if (picked != null && picked != selectDate) {
      selectDate = picked;
    }
  }

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final amountController = TextEditingController();
    var date_user;
    DateTime? newDate;
    var size = MediaQuery.of(context).size;
    DateTime date = DateTime.now();
    Provider.of<TransactionProvider>(context, listen: false).initData();

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.fromLTRB(170, 0, 0, 0),
          child: Text(
            "ยอดคงเหลือ",
            style: TextStyle(
                color: Color(0xFF17352E),
                fontSize: 18.0,
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
          bool _validate = false;
          for (int i = 0; i < provider.transactions.length; i++) {
            sum += provider.transactions[i].amount!;
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Column(children: [
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
                            sum.toString() + " ฿",
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 25,
                              color: const Color(0xff17352e),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    )
                  ]),
                  height: size.height * 0.2 - 27,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      )),
                ),
                Container(
                  alignment: Alignment(0, -0.68),
                  child: Padding(
                    padding: EdgeInsets.all(0.0),
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
                Container(
                  child: Column(children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'บันทึกรายรับรายจ่าย',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 20,
                              color: const Color(0xff17352e),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    )
                  ]),
                ),
                Container(
                  width: 300,
                  height: 100,
                  child: Column(children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                              controller: titleController,
                              scrollPadding: EdgeInsets.all(10),
                              decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 214, 220, 209),
                                  filled: true,
                                  errorText:
                                      _validate ? 'กรุณากรอกข้อมูล' : null,
                                  labelText: "รายการ",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))))),
                        )
                      ],
                    )
                  ]),
                ),
                Container(
                  width: 300,
                  height: 100,
                  child: Column(children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 12,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                              controller: amountController,
                              keyboardType: TextInputType.number,
                              scrollPadding: EdgeInsets.all(10),
                              decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 214, 220, 209),
                                  filled: true,
                                  labelText: "รายรับ-รายจ่าย (รายจ่ายให้ใส่ -)",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))))),
                        )
                      ],
                    )
                  ]),
                ),
                Container(
                  width: 300,
                  height: 100,
                  child: Column(children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 0,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            child: Text('เลือก วัน/เดือน/ปี'),
                            onPressed: () async {
                              // newDate = await showDatePicker(
                              //   context: context,
                              //   initialDate: date,
                              //   firstDate: DateTime(1900),
                              //   lastDate: DateTime(2100),
                              // );
                              // if (newDate == null) return;
                              // // print(Type(newDate));
                              _selectDate(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 23, 198, 186),
                              onPrimary: Color.fromARGB(255, 0, 0, 0),
                              minimumSize: Size(400, 40),
                            ),
                          ),
                        )
                      ],
                    )
                  ]),
                ),
                Container(
                  width: 300,
                  height: 100,
                  child: Column(children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 0,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(165, 40),
                                primary: Color.fromARGB(255, 2, 74, 9),
                                onPrimary: Color.fromARGB(221, 255, 255, 255)),
                            child: Text('ยืนยัน'),
                            onPressed: () {
                              print(selectDate.toString());
                              var title = titleController.text;
                              var amount = (amountController).text;
                              var date_user = newDate;
                              // print(newDate.toString());
                              //เตรียมข้อมูล
                              Transactions statement = Transactions(
                                title: title,
                                amount: double.parse(amount),
                                date: selectDate.toString(),
                              );

                              //provider
                              var provider = Provider.of<TransactionProvider>(
                                  context,
                                  listen: false);
                              provider.addTransaction(statement);
                              titleController.text = "";
                              amountController.text = "";
                            },
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              ],
            ),
          );
        },
      ),
      backgroundColor: Color.fromARGB(255, 222, 236, 228),
    );
  }
}
