import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
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
      body: Container(
        color: const Color.fromARGB(255, 222, 221, 252),
        child: Column(
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
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white.withOpacity(0.5),
                  width: 350,
                  height: 482,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(children: [
                          WidgetSpan(
                              child: Icon(
                            Icons.info_outline,
                            size: 25,
                          )),
                          TextSpan(
                            text: ' 您寻找的教职人员，\n\t\t\t\t\t\t目前不在位置上\n',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                          TextSpan(
                              text: "\t\t\t\t\t\t\t\t点击下方按钮以留下一个短信",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15))
                        ]),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Center(
                        child: Container(
                          height: 50,
                          width: 85,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(1000)),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              '留下短信',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  color: Colors.white,
                  width: 800,
                  height: 482,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '留下短信',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "致：",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '输入不超过30个字的短信',
                            hintStyle:
                                TextStyle(color: Colors.grey.withOpacity(0.5))),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
