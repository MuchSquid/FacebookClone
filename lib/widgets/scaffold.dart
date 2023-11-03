// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        //  alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: const Column(
          children: [            
            Expanded(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(),
                ),
              ),
            ),
            Text('Insert Text'),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      // Evita restructurar el tamaño cuando se abre un field
      // resizeToAvoidBottomInset: false,
      // drawerEdgeDragWidth: 20,
      drawerEnableOpenDragGesture: false, //true por default
      onDrawerChanged: (isOpened) {
        if (isOpened == true) {
          print("IsOpen");
        } else {
          print("IsClose");
        }
      },
      drawer: const Drawer(
        // enDrawers para la derecha
        elevation: 0,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text("Data"),
            Text("Option"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff01579b),
        child: const Icon(
          Icons.add,
          size: 35,
        ),
        onPressed: () {
          print("FloatingActionButton");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // endDrawer: Drawer(),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.black, // android
          // statusBarBrightness: Brightness.dart, // ios
        ),
        backgroundColor: const Color(0xff01579b),
        elevation: 0,
        shadowColor: Colors.blue,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 22,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutter App",
            ),
            Text(" 2"),
          ],
        ),
      ),
    );
  }
}
