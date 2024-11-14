import 'package:flutter/material.dart';
import '../components/custom_navigation_bar.dart';
import '../components/custom_search_bar.dart';
import 'live_screen.dart';
import 'green_screen.dart';
import 'my_screen.dart';
import 'scearch_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreenContent(),
    const LiveScreen(),
    const GreenScreen(),
    const MyScreen(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomSearchBar(onTap: () {
            // 검색 화면으로 이동하는 로직 추가
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchScreen()),
            );
          }),
          Expanded(child: _screens[_currentIndex]),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('홈 화면'));
  }
}
