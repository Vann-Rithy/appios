import 'package:creadit_card/Build_CreditCard.dart';
import 'package:creadit_card/screens/Account.dart';
import 'package:creadit_card/screens/AppBar/drawer.dart';
import 'package:creadit_card/screens/MyPlay.dart';
import 'package:creadit_card/screens/homepage.dart';
import 'package:creadit_card/screens/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flip_card/flip_card.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BuildBody(),
    );
  }
}

class BuildBody extends StatefulWidget {
  const BuildBody({super.key});

  @override
  State<BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 123, 27, 27),
        elevation: 0,
        title: Align(
            alignment: Alignment.center,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("images/rupp_logo.png"),
                  ),
                ),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: "សាកលវិទ្យាល័យភូមិន្ទភ្នំពេញ\n",
                        style: TextStyle(fontSize: 18)),
                    TextSpan(
                        text: "ROYAL UNIVERSITY OF PHNOM PENH",
                        style: TextStyle(fontSize: 10)),
                  ]),
                ),
              ],
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 0),
            child: ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const SearchPage())),
                child: Icon(Icons.search),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  elevation: MaterialStatePropertyAll(0),
                )),
          )
        ],
      ),
      body: Center(
        child: _selectedIndex == 0
            ? const MyHomePage()
            : _selectedIndex == 1
                ? MyAccount()
                : _selectedIndex == 2
                    ? const Build_CreditCard()
                    : const My_setting(),
      ),
      bottomNavigationBar: BuildNavBar,
    );
  }

  get BuildNavBar {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: Color.fromARGB(255, 123, 27, 27),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: "Account",
          backgroundColor: Color.fromARGB(255, 123, 27, 27),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.payment),
          label: "payment",
          backgroundColor: Color.fromARGB(255, 123, 27, 27),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: "Menu",
          backgroundColor: Color.fromARGB(255, 123, 27, 27),
        ),
      ],
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Color.fromARGB(255, 123, 27, 27),
        // The search area here
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      /* Clear the search field */
                    },
                  ),
                  hintText: 'Search...',
                  border: InputBorder.none),
            ),
          ),
        ));
  }
}
