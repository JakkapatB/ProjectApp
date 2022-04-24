import 'package:betacode/cardPage.dart';
import 'package:betacode/providers/transction_provider.dart';
import 'package:betacode/providers/transction_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sembast/sembast.dart';

class Howtouse extends StatelessWidget {
  const Howtouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Provider.of<TransactionProvider>(context, listen: false).initData();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "วิธีใช้งาน",
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
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(65, 10, 0, 0),
                    child: Container(
                      width: 270,
                      height: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/l1.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(65, 20, 0, 0),
                    child: Container(
                      width: 270,
                      height: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/l2.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(65, 30, 0, 0),
                    child: Container(
                      width: 270,
                      height: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/l3.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(65, 40, 0, 0),
                    child: Container(
                      width: 270,
                      height: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/l4.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(65, 50, 0, 0),
                    child: Container(
                      width: 270,
                      height: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/l5.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(65, 60, 0, 10),
                    child: Container(
                      width: 270,
                      height: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/l6.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 222, 236, 228),
    );
  }
}
