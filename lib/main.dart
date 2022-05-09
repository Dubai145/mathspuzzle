import 'package:flutter/material.dart';
import 'package:mathspuzzle/second.dart';
import 'package:mathspuzzle/t%20page.dart';

void main() {
  runApp(MaterialApp(
    home: FirstPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 700,
        width: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('image/background.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
                height: 70,
                width: 300,
                color: Colors.transparent,
                child: Center(
                  child: Text(
                    'Math Puzzles',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'namepuzzle'),
                  ),
                ),
              ), // math puzzle name
              Container(
                height: 370,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage('image/blackboard_main_menu.png'),
                      fit: BoxFit.fill),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(6),
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return ContinuePage();
                                },
                              ));
                            },
                            child: Center(
                              child: Text(
                                'CONTINUE',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'boardfont',
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(6),
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return PuzzleLevel();
                                },
                              ));
                            },
                            child: Center(
                              child: Text(
                                'PUZZLES',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'boardfont',
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.all(6),
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                'BUY PRO',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'boardfont',
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ), // center image2
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.grey, Colors.white],
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          )
                        ]),
                    child:
                        IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.grey, Colors.white],
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                          )
                        ]),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.email_outlined)),
                  ),
                ],
              ), //share // mail
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 35,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 3, color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(
                          //   builder: (context) {
                          //     return PrivacyPage();
                          //   },
                          // ));
                        },
                        child: Center(
                          child: Text(
                            'Privacy Policy',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ),
                ],
              ), //privacy
            ],
          ),
        ),
      ),
    );
  }
}
