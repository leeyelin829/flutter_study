import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class TestView extends StatefulWidget {
  @override
  _TestViewState createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  final postList = [
    {
      "title": "Title 1",
      "color": Colors.amber, // 색상 이름을 문자열로 변경
    },
    {
      "title": "Title 2",
      "color": Colors.lightBlue, // 색상 이름을 문자열로 변경
    },
    {
      "title": "Title 3",
      "color": Colors.redAccent, // 색상 이름을 문자열로 변경
    },
  ];

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
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 12.0,
        ),
        children: [
          postContainer(title: "제목 1", colorName: Colors.amber),
          postContainer(title: "제목 2", colorName: Colors.deepPurpleAccent),
          postContainer(title: "제목 3", colorName: Colors.blue),
          postContainer(title: "제목 4", colorName: Colors.purpleAccent),
          postContainer(title: "제목 5", colorName: Colors.red),
          postContainer(title: "제목 6", colorName: Colors.green),
          postContainer(title: "제목 7", colorName: Colors.blueGrey),
          postContainer(title: "제목 8", colorName: Colors.cyanAccent),
        ],
      ),
    );
  }

  Container postContainer({String title = "제목", Color colorName = Colors.black}) {
    return Container(
      height: 200,
      child: Column(
        children: [
          Container(
            height: 40,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10),
            child: Text(title),
          ),
          Container(height: 140, color: colorName),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestView(),
    );
  }
}

