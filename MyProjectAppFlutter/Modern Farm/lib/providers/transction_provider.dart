import 'package:betacode/database/TransactionDB.dart';
import 'package:betacode/models/Transactions.dart';
import 'package:flutter/foundation.dart';

class TransactionProvider with ChangeNotifier {
  // ตัวอย่างข้อมูล
  List<Transactions> transactions = [];

  // ดึงข้อมูล
  List<Transactions> getTransaction() {
    return transactions;
  }

  void initData() async {
    var db = TransactionDB(dbName: "transactions.db");
    //ดึงข้อมูลมาแสดงผล
    transactions = await db.loadAllData();
    notifyListeners();
  }

// void initData(){
//    var db = TransactionDB(dbName: "transactions.db");
//    transactions = await db.loadAllData();
// }
  void addTransaction(Transactions statement) async {
    var db = TransactionDB(dbName: "transactions.db");
    await db.InsertData(statement);
    transactions.add(statement);
    // var db=TransactionDB(dbName: "transactions.db");
    // //บันทึกข้อมูล
    // await db.InsertData(statement);
    //ดึงข้อมูลมาแสดงผล
    transactions = await db.loadAllData();
    // await db.loadAllData();
    //แจ้งเตือน Consumer
    notifyListeners();
  }
}
