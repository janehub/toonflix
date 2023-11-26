import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

//constant : 수정할 수 없고, compile 전에 value를 알 수 있는 변수
// constant 변수로 만들면 런타임 전에 컴파일러가 컴파일 하는 중에 값을 산정할 수 있어서 앱이 동작하기에 더 쉬움

void main() {
  runApp(const App());
}

//StatelessWidget : Basic App 으로 화면에 뭔가를 보여주는 것 말고는 특별한 기능이 없음

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp : Google <- flutter Google, 따라서 훨씬 나음
    // CoupertinoApp : IOS
    // Custom Design 원하더라도 기본 시작점을 선택해줘야함. 기본 UI와 같은..
    // - MaterialApp 선택하고 Google 느낌 빼기
    return MaterialApp(
      // scaffold : 화면의 구조 제공. 모든 스크린은 scaffold가 필요하다.
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
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
                  const SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '\$5 195 482',
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                          text: 'Transfer',
                          bgColor: Color(0xFFF1B33B),
                          textColor: Colors.black),
                      Button(
                          text: 'Request',
                          bgColor: Color(0xFF1F2123),
                          textColor: Colors.white),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
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
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CurrencyCard(
                    name: 'Euro',
                    code: 'EUR',
                    amount: '6 438',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    order: 1,
                  ),
                  CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '9 785',
                    icon: Icons.currency_bitcoin_rounded,
                    isInverted: true,
                    order: 2,
                  ),
                  CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '456',
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                    order: 3,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
