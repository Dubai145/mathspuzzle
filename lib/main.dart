import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:mathspuzzle/stage1page.dart';
import 'package:mathspuzzle/tpage.dart';
import 'package:shared_preferences/shared_preferences.dart';



void main() {
  runApp(MaterialApp(
    home: firstpage(),
    debugShowCheckedModeBanner: false,
  ));
}

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  _firstpageState createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  String f1 = "myfamily";
  int? level;
  bool status = false;
  var model;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getShareprefre();
  }

  Future<void> getShareprefre() async {
    model.pref = await SharedPreferences.getInstance();
    level = model.pref!.getInt("level") ?? 0;
    model.statuslist.clear();

    for (int i = 0; i < 75; i++) {
      String levelstatus = model.pref!.getString("status$i") ?? "pending";
      print(levelstatus);
      model.statuslist.add(levelstatus);
      print(model.statuslist);
    }
  }

  @override
  Widget build(BuildContext context) {
    double totalheight = MediaQuery.of(context).size.height;
    double totalwidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
          height: totalheight / 1,
          width: totalwidth / 1,
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
                      'Math puzzle',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'puzzle'),
                    ),
                  ),
                ),
                Container(
                  height: 650,
                  width: 450,
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
                          height: 50
                          ,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return stage1(level!);
                                  },
                                ));
                                setState(() {
                                  model.pref!.getInt('level');
                                });
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
                                    return selectstage('');
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              spreadRadius: 0,
                            )
                          ]),
                      child: IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
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
                ),
              ],
            ),
          ),
        ));
  }
}