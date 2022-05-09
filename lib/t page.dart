import 'package:flutter/material.dart';
import 'package:math_puzzle/main.dart';

class ContinuePage extends StatefulWidget {
  const ContinuePage({Key? key}) : super(key: key);

  @override
  State<ContinuePage> createState() => _ContinuePageState();
}

class _ContinuePageState extends State<ContinuePage> {
  List P_image = [
    'image/p1.png',
    'image/p2.png',
    'image/p3.png',
    'image/p4.png',
    'image/p5.png',
    'image/p6.png',
    'image/p7.png',
    'image/p8.png',
    'image/p9.png',
    'image/p10.png',
  ];

  List Puzzle_Count = [
    'PUZZLE 1',
    'PUZZLE 2',
    'PUZZLE 3',
    'PUZZLE 4',
    'PUZZLE 5',
    'PUZZLE 6',
    'PUZZLE 7',
    'PUZZLE 8',
    'PUZZLE 9',
    'PUZZLE 10'
  ];

  TextEditingController maintext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 540,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('image/gameplaybackground.jpg'),
                    fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(18),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image: AssetImage('image/skip.png'),
                              fit: BoxFit.fill),
                        ),
                        child: InkWell(onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return FirstPage();
                            },
                          ));
                        }),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                          height: 60,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                                image: AssetImage('image/level_board.png'),
                                fit: BoxFit.fill),
                          ),
                          child: Center(
                            child: Text(
                              'PUZZLE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'boardfont',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          )),
                      Container(
                        margin: EdgeInsets.all(0),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image: AssetImage('image/hint.png'),
                              fit: BoxFit.fill),
                        ),
                        child: InkWell(onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return FirstPage();
                            },
                          ));
                        }),
                      ),
                    ],
                  ),
                  Container(
                    height: 290,
                    width: 340,
                    color: Colors.transparent,
                    child: PageView.builder(
                      itemCount: P_image.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 290,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                                image: AssetImage('image/p${index + 1}.png'),
                                fit: BoxFit.fill),
                          ),
                        );
                      },
                    ),
                  )
                ],
              )), //image

          Container(
            width: 400,
            height: 100,
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(7),
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        controller: maintext,
                        decoration: InputDecoration(
                            focusColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return FirstPage();
                          },
                        ));
                      },
                      child: Container(
                        height: 45,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.transparent,
                            image: DecorationImage(
                                image: AssetImage('image/delete.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                        height: 45,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            'SUBMIT',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'namepuzzle',
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            '1',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            '2',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            '3',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            '4',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            '5',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            '6',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            '7',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            '8',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            '9',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            '0',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
