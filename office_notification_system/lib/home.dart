// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 217, 217, 217),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/School Badge.png',
              height: 100,
              width: 500,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '办公室通知系统',
                  style: TextStyle(
                    color: Color.fromARGB(255, 33, 22, 237),
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('请选择您所寻找的教职人员所处的办公室楼层',
                    style: TextStyle(
                      color: Color.fromARGB(255, 23, 106, 182),
                      fontSize: 25,
                    )),
              ],
            )
          ],
        ),
        toolbarHeight: 140,
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 65, 53, 53),
            ),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.black,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      '主页',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Message');
                    },
                    child: const Text(
                      '发送短信',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      '主页',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 130,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: const Color.fromARGB(255, 77, 75, 190),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/6th_1');
                      },
                      child: const Text(
                        '六楼老师办公室\n         （1）',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ))),
              Container(
                  height: 130,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: const Color.fromARGB(255, 77, 75, 190),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/6th_2');
                      },
                      child: const Text(
                        '六楼老师办公室\n       （2）',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ))),
              Container(
                  height: 130,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: const Color.fromARGB(255, 77, 75, 190),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/7th_1');
                      },
                      child: const Text(
                        '七楼老师办公室\n         （1）',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ))),
            ],
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 130,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: const Color.fromARGB(255, 77, 75, 190),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/7th_2');
                      },
                      child: const Text(
                        '七楼老师办公室\n         （2）',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ))),
              Container(
                  height: 130,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: const Color.fromARGB(255, 77, 75, 190),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/8th_1');
                      },
                      child: const Text(
                        '八楼老师办公室\n         （1）',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ))),
              Container(
                  height: 130,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: const Color.fromARGB(255, 77, 75, 190),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/8th_2');
                      },
                      child: const Text(
                        '八楼老师办公室\n        （2）',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ))),
            ],
          ),
        ],
      ),
    );
  }
}
