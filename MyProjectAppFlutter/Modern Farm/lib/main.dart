import 'package:betacode/incomeAndExpensesPage.dart';
import 'package:betacode/homePage.dart';
import 'package:betacode/advicePage.dart';
import 'package:betacode/test3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Beta app';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  DateTime date = DateTime(2022, 12, 24);
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    homePage(),
    incomeAndExpensesPage(),
    advicePage(),
    test3()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'หน้าหลัก',
            backgroundColor: Color(0xff17352E),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'รายรับ-รายจ่าย',
            backgroundColor: Color(0xff17352E),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories_sharp),
            label: 'คำแนะนำพืช',
            backgroundColor: Color(0xff17352E),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.aod),
            label: 'วิธีใช้งาน',
            backgroundColor: Color(0xff17352E),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepOrange.shade100,
        onTap: _onItemTapped,
      ),
    );
  }
}
