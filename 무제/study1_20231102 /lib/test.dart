import 'package:flutter/material.dart';

class TestView extends StatefulWidget {
  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("commission"),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text("Drawer Heaer Part"),
          ),
          ListTile(
            title: Text("Menu 1"),
          ),
        ],
          )),
      body: Container(),
      floatingActionButton: FloatingActionButton(),
    );
  }
}