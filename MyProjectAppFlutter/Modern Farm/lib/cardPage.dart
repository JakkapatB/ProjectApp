import 'package:betacode/models/Transactions.dart';
import 'package:betacode/providers/transction_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sembast/sembast.dart';

class cardPage extends StatelessWidget {
  const cardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<TransactionProvider>(context, listen: false).initData();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "รายการบัญชี",
          style: TextStyle(
              color: Color.fromARGB(255, 238, 246, 244),
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF006400),
      ),
      body: Consumer(
        builder: (context, TransactionProvider provider, child) {
          if (provider.transactions.length <= 0) {
            return Center(
              child: Text(
                "ไม่พบข้อมูล",
                style: TextStyle(fontSize: 35),
              ),
            );
          } else {
            return ListView.builder(
                itemCount: provider.transactions.length,
                itemBuilder: (context, int index) {
                  Transactions data = provider.transactions[index];
                  return Card(
                    color: Color.fromARGB(255, 144, 252, 193),
                    elevation: 5,
                    margin: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        radius: 30,
                        child: FittedBox(
                          child: Text(data.amount.toString()),
                        ),
                      ),
                      title:
                          Text(provider.transactions[index].title.toString()),
                      subtitle: Text(data.date.toString()),
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
