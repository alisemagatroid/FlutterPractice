// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';
import 'package:toonflix/widgets/CurrencyCard.dart';

class Player {
  String? name; // may or may not have a aname

  //생성자
  Player({required this.name});
}

void main() {
  var Sw = Player(name: "성우");
  runApp(App());
}

//App이라는 위젯을 만들었고 StatelessWidget을 상속받았는데, Build 메소드가 구현이 안됬다. 해당 위젯이 루트 위젯이 된다.
//Build 메소드는 위젯을 이루는 기능이다. 이 메소드를 실행해 위젯의 기능읋나다.
class App extends StatelessWidget {
  const App({super.key});

  // const App({super.key});

  //부모클래스의 모든것을 오버라이드 해오는 것
  //해당 Build 메소드를 통해 위젯을 리턴해야한다. 해당 위젯은, 위젯을 리턴하는 위젯이다.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //홈이라는 위젯을 또 만든 것 쉽표를 붙임으로써 각 부분이 뭔지 나온다.
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, //컬럼의 메인은 세로 크로스는 가로 Start를 통해 컬럼의 시작점에 텍스트 정렬하는 것
              children: [
                SizedBox(
                  height: 80,
                ), //위쪽이랑 여백을 주는 곳
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.end, //MainAxis Row에서는 가로가 Main
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '안녕하세요, 성우님',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '파이팅입니다!',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                      fontSize: 22, color: Colors.white.withOpacity(0.8)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '\$9 999 999',
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w600,
                      color: Colors.white.withOpacity(0.8)),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      //Button 커스텀 위젯으로 값을 넣는 것으로 재사용이 가능해 졌다.
                      text: 'Transfer',
                      bgColor: Colors.amber,
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color.fromARGB(255, 10, 12, 5),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '5 421',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  order: 1,
                ),
                CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '100',
                  icon: Icons.currency_bitcoin_rounded,
                  isInverted: true,
                  order: 2,
                ),
                CurrencyCard(
                  name: 'Diamond',
                  code: 'VVS',
                  amount: '1000',
                  icon: Icons.diamond_outlined,
                  isInverted: false,
                  order: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
