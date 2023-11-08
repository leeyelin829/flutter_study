import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class TestView extends StatefulWidget {
  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("테스트 제목"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ),
              child: Text("드로어 헤더 부분"),
            ),
            ListTile(
              title: Text("메뉴 1"),
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder:(BuildContext context){
                    return AlertDialog(
                      title: Text("안녕하세요"),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: [
                            Text("Dialog Content"),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                            child: Text('Close'),
                            onPressed: () => Navigator.of(context).pop(),
                        ),
                      ],
                    );
                    },
              );
            },
            child: Container(
              width: 150,
              height: 150,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestView(),
    );
  }
}