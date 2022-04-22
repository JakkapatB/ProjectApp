import 'package:betacode/models/Transactions.dart';
import 'package:flutter/foundation.dart';

class TransactionProvider with ChangeNotifier {
  // ตัวอย่างข้อมูล
  List<Transactions> transactions = [
    Transactions(title: "s", amount: 8, date: DateTime.now()),
    Transactions(title: "s", amount: 8, date: DateTime.now()),
    Transactions(title: "s", amount: 8, date: DateTime.now()),
  ];

  // ดึงข้อมูล
  List<Transactions> getTransaction() {
    return transactions;
  }
  // void initData() async{
  //     var db=TransactionDB(dbName: "transactions.db");
  //     //ดึงข้อมูลมาแสดงผล
  //     transactions=await db.loadAllData();
  //     notifyListeners();
  // }

  void addTransaction(Transactions statement) {
    transactions.add(statement);
    // var db=TransactionDB(dbName: "transactions.db");
    // //บันทึกข้อมูล
    // await db.InsertData(statement);
    // //ดึงข้อมูลมาแสดงผล
    // transactions=await db.loadAllData();
    // //แจ้งเตือน Consumer
    // notifyListeners();
  }
}
