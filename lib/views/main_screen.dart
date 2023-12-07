import 'package:apppelican_3_flutter/views/knowledge_view.dart';
import 'package:apppelican_3_flutter/views/login_view.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedPageIndex = 1;

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeView = const KnowledgeView();
    var activePageTitle = 'Knowledge';

    if (_selectedPageIndex == 0 || _selectedPageIndex == 2) {
      activeView = const LoginView();
      activePageTitle = 'Login';
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 47, 54),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          activePageTitle,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.8),
        ),
        backgroundColor: const Color.fromARGB(255, 51, 58, 67),
        surfaceTintColor: const Color.fromARGB(255, 51, 58, 67),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle_outlined,
              color: Color.fromARGB(255, 136, 223, 169),
              size: 26,
            ),
          )
        ],
      ),
      body: activeView,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 51, 58, 67),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'Finances',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_outlined),
            label: 'Knowledge',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Learn',
          )
        ],
        currentIndex: _selectedPageIndex,
        selectedItemColor: const Color.fromARGB(255, 136, 223, 169),
        onTap: _selectedPage,
      ),
    );
  }
}
