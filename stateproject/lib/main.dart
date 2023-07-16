import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  List<int> numbers = [];

  bool showtitle = true;

  void onClick() {
    //setState 함수가 있어야 Flutter에게 State변화를 알려주게 된다.
    setState(() {
      numbers.add(numbers.length);
    });
  }

  void toggleTitle() {
    setState(() {
      showtitle = !showtitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showtitle
                  ? const MyTitle()
                  : const Text(
                      '널',
                      style: TextStyle(fontSize: 20),
                    ),
              IconButton(
                  onPressed: toggleTitle, icon: const Icon(Icons.dangerous))
            ],
          ),
        ),
      ),
    );
  }
}

//Build Context의 사용법
//트리 형태로 이루어진 위젯의 위치에 접근 할 수 있도록 하는 것
class MyTitle extends StatefulWidget {
  const MyTitle({
    super.key,
  });

  @override
  State<MyTitle> createState() => _MyTitleState();
}

class _MyTitleState extends State<MyTitle> {
  int live = 0;

//한번 초기에 호출되는 함수 build 이전에 호출된다.
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('tlqkf');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('휴오');
    return Text(
      'Title',
      style: TextStyle(
          fontSize: 30, color: Theme.of(context).textTheme.titleLarge?.color),
    );
  }
}
