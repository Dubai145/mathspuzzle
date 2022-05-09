import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PuzzleLevel extends StatefulWidget {
  const PuzzleLevel({Key? key}) : super(key: key);

  @override
  State<PuzzleLevel> createState() => _PuzzleLevelState();
}

class _PuzzleLevelState extends State<PuzzleLevel> {
  @override
  List Mynumber = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31,
    32,
    33,
    34,
    35,
    36,
    37,
    38,
    39,
    40,
    41,
    42,
    43,
    44,
    45,
    46,
    47,
    48,
    49,
    50,
    51,
    52,
    53,
    54,
    55,
    56,
    57,
    58,
    59,
    60,
    61,
    62,
    63,
    64,
    65,
    66,
    67,
    68,
    69,
    70,
    71,
    72,
    73,
    74,
    75
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 700,
          width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('image/background.jpg'), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                height: 50,
                width: 300,
                color: Colors.transparent,
                child: Center(
                  child: Text(
                    'S e l e c t  P u z z l e s',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'namepuzzle'),
                  ),
                ),
              ), //select name

              Container(
                  color: Colors.transparent,
                  height: 400,
                  width: 400,
                  child: PageView.builder(
                    itemBuilder: (context, index) {
                      return GridView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Mynumber.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.all(10),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        width: 2, color: Colors.black)),
                                child: Center(
                                  child: Text(
                                    '${Mynumber[index]}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35,
                                        fontFamily: 'indextext'),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            );
                          },
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4));
                    },
                  )), // main list

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 20, 0, 0),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                  ), //LEFT
                  Container(
                    margin: EdgeInsets.fromLTRB(230, 20, 15, 0),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios_rounded)),
                  ), // RIGHT
                ],
              ),
            ],
          )),
    );
  }
}
