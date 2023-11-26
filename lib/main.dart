import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

//StatelessWidget : Basic App 으로 화면에 뭔가를 보여주는 것 말고는 특별한 기능이 없음

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp : Google <- flutter Google, 따라서 훨씬 나음
    // CoupertinoApp : IOS
    // Custom Design 원하더라도 기본 시작점을 선택해줘야함. 기본 UI와 같은..
    // - MaterialApp 선택하고 Google 느낌 빼기
    return MaterialApp(
      // scaffold : 화면의 구조 제공. 모든 스크린은 scaffold가 필요하다.
      home: Scaffold(
          backgroundColor: Color(0xFF181818),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 120,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '\$5 195 482',
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 50,
                        ),
                        child: Text('Transfer',
                        style: TextStyle(
                          fontSize: 22,
                        ),),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
