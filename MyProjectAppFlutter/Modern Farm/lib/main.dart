import 'package:betacode/incomeAndExpensesPage.dart';
import 'package:betacode/homePage.dart';
import 'package:betacode/advicePage.dart';
import 'package:betacode/providers/transction_provider.dart';
import 'package:betacode/Howtouse.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Modern Fram';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return TransactionProvider();
        }),
      ],
      child: const MaterialApp(
        title: _title,
        home: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    homePage(),
    incomeAndExpensesPage(),
    advicePage(),
    Howtouse()
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
            backgroundColor: Color(0xFF006400),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'รายรับ-รายจ่าย',
            backgroundColor: Color(0xFF006400),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories_sharp),
            label: 'คำแนะนำพืช',
            backgroundColor: Color(0xFF006400),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.aod),
            label: 'วิธีใช้งาน',
            backgroundColor: Color(0xFF006400),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 233, 223, 110),
        onTap: _onItemTapped,
      ),
    );
  }
}
