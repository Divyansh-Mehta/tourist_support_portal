import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "./home_screen.dart";
import "../utils/color_utils.dart";
import "../widgets/app_drawer.dart";
import "./coin_screen.dart";

// ignore: use_key_in_widget_constructors
class TabsScreen extends StatefulWidget {
  static const routeName = "/tabs-screen";
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  // ScrollController _scrollController;
  // double _ScrollControllerOffset = 0.0;

  // _scrollListener() {
  //   setState(() {
  //     _ScrollControllerOffset = _scrollController.offset;
  //   });
  // }

  List<Object> _pages;

  int _selectedPageIndex;

  @override
  void initState() {
    super.initState();
    // _scrollController = ScrollController();
    // _scrollController.addListener(_scrollListener);

    _selectedPageIndex = 0;
    _pages = [
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      // CodingEquipmentsScreen(),
      // GroupScreen(),
      // ProfileScreen(),
    ];
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  Widget _createBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            hexStringToColor("CB2B93"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F4")
          ],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          // stops: [0.0, 0.8],
          // tileMode: TileMode.clamp,
        ),
      ),
      child: BottomNavigationBar(
        onTap: _selectPage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        // selectedFontSize: 15,
        iconSize: 35,
        elevation: 0,
        currentIndex: _selectedPageIndex,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Traveller",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: "TripShot",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.quiz),
              label: "Discover",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.mic_external_on),
              label: "Host",
              backgroundColor: Colors.white),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      drawer: AppDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(CoinScreen.routeName);
            },
            icon: ImageIcon(
              AssetImage("assets/icons/coin.png"),
            ),
          ),
        ],
        title: const Text("Tripsyy"),
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () {},
        // ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                hexStringToColor("CB2B93"),
                hexStringToColor("9546C4"),
                hexStringToColor("5E61F4")
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
      ),
      bottomNavigationBar: _createBottomNavigationBar(),
      body: _pages[_selectedPageIndex],
    );
  }
}
