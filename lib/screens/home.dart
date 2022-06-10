import 'package:covidify/screens/country/covid_data.dart';
import 'package:covidify/screens/vacination.dart';
import 'package:flutter/material.dart';
import '../theme.dart';
import 'dashboard.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_icons/flutter_icons.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List _screens = [DashBoard(), Vaccination(), CovidData()];
  bool falg = false;
  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(child: const Text('Covidify')),
      // ),
      // floatingActionButton: IconButton(
      //               icon: Icon(
      //                   falg ? Icons.wb_sunny : Icons.nights_stay,),
      //               onPressed: () {
      //                 setState(() {
      //                   falg = !falg;
      //                   currentTheme.switchTheme();
      //                 });
      //               },
      // ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.blue[700],
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Vaccination Center",
            icon: Icon(Icons.center_focus_strong),
          ),
          BottomNavigationBarItem(
            label: "Covid Data",
            icon: Icon(Icons.coronavirus),
          ),
        ],
      ),
    );
  }

}
