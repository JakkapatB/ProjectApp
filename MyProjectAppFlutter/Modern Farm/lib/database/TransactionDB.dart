import 'dart:io';

import 'package:betacode/models/Transactions.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class TransactionDB {
  String? dbName;

  TransactionDB({this.dbName});

  Future<Database> openDatedase() async {
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String dbLocation = join(appDirectory.path, dbName);
    DatabaseFactory dbFactory = await databaseFactoryIo;
    Database db = await dbFactory.openDatabase(dbLocation);
    return db;
  }

  Future<int> InsertData(Transactions statement) async {
    var db = await this.openDatedase();
    var store = intMapStoreFactory.store("expense");

    var keyID = store.add(db, {
      "title": statement.title,
      "amount": statement.amount,
      "date": statement.date
    });
    db.close();
    return keyID;
  }

  Future<List<Transactions>> loadAllData() async {
    var db = await this.openDatedase();
    var store = intMapStoreFactory.store("expense");
    var snapshot = await store.find(db,
        finder: await Finder(sortOrders: [SortOrder(Field.key, false)]));
    List<Transactions> transactionList = [];
    int i = 0;
    for (var record in snapshot) {
      transactionList.add(Transactions(
          title: record.value["title"].toString(),
          amount: double.parse(record.value["amount"].toString()),
          date: (record.value["date"] == null)
              ? DateTime.now().toString()
              : record.value["date"].toString()));
      // print("ABC");
      // print(record.value['title']);
      // print(record.value["date"].toString());
    }
    return transactionList;
  }
}
