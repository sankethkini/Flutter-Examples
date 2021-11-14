import 'package:flutter/material.dart';

//drawer and tab
Widget drawerAndTabs() {
  return MaterialApp(
    home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            bottom: TabBar(
              tabs: [Icon(Icons.car_repair), Icon(Icons.card_giftcard_sharp)],
            ),
            title: Text('hvhjvhj')),
        body: TabBarView(
          children: [
            Icon(Icons.car_repair),
            Icon(Icons.gif_outlined),
          ],
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                },
              ),
            ],
          ),
        ),
      ),
    ),
  );
}