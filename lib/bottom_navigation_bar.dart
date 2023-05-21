import 'package:carrot/pages/home.dart';
import 'package:carrot/pages/town_life.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0;

  List<Widget> pages = [
    const Home(),
    const TownLife(),
    const Home(),
    const Home(),
  ];

  void onChangedIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: bottomWidgetList.elementAt(_currentIndex),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          onChangedIndex(value);
        },
        currentIndex: _currentIndex,
        items: const [ // 하단 탭
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apartment),
            label: '동네생활',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: '내 근처',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: '채팅',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '나의 당근',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
      ),
    );
  
  }
}