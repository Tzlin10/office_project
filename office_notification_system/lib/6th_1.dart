import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: sixth_1(),
  ));
}

class sixth_1 extends StatefulWidget {
  const sixth_1({super.key});

  @override
  State<sixth_1> createState() => _sixth_1State();
}

class _sixth_1State extends State<sixth_1> {
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Text(
            '科学教师',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 125, 125, 125),
            ),
          ),
          const Text(
            '数学教师',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 125, 125, 125),
            ),
          ),
          const Text(
            '华文教师',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 125, 125, 125),
            ),
          ),
        ],
      ),
    );
  }
}
