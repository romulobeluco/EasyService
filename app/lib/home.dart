// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/homescreen.dart';
import 'package:app/profilescree.dart';
import 'package:app/settingsscreen.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  
  @override
  State<HomePage> createState() {
    
    return HomePageState();
  }
  

}

class HomePageState extends State<HomePage>{
  int _currentIndex = 1;
  final List<Widget> _screens = [
    ProfileScreen(),
    HomeScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,

      appBar: AppBar(
        title: Center(
          child: Text(
          'EasyService',
          style: TextStyle(
          fontSize: 50.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 78, 55, 36),
          ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 198, 149, 131),
      ),

      
      body:_screens[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:  const Color.fromARGB(255, 198, 149, 131),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}