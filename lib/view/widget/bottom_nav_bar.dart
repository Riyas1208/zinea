import 'package:flutter/material.dart';
import 'package:zinea/view/book_celebrity.dart';
import 'package:zinea/view/buy_movie.dart';
import 'package:zinea/view/home_screen.dart';
import 'package:zinea/view/make_movie.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final List _pages = [
    HomePage(),
    MakeMoviePage(),
    BuyMoviePage(),
    BookCelebrityPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildNavItem(
                Image.asset('assets/images/movie.png'), 'Movies', 0),
            _buildNavItem(
                Image.asset('assets/images/makeMovie.png'), 'Make Movie', 1),
            _buildNavItem(
                Image.asset('assets/images/buyMovie.png'), 'Buy Movie', 2),
            _buildNavItem(
                Image.asset('assets/images/celebrity.png'), 'Book Celebirity',
                3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(Widget icon, String text, int index) {
    return GestureDetector(
      onTap: () {
        _onItemTapped(index);
      },
      child: Container(
        height: 80,
        width: 90,
        alignment: Alignment.center,
        color: _selectedIndex == index ? Colors.yellow : Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ColorFiltered(
              colorFilter: _selectedIndex == index ? const ColorFilter.mode(
                  Colors.black, BlendMode.srcIn) : const ColorFilter.mode(
                  Colors.white, BlendMode.srcIn),
              child: icon,
            ),
            const SizedBox(height: 5.0),
            Text(
              text,
              style: TextStyle(
                fontFamily: "text1",
                fontWeight: FontWeight.w700,
                fontSize: 10,
                color: _selectedIndex == index ? Colors.black : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
