import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class extra extends StatefulWidget {
  const extra({Key? key}) : super(key: key);

  @override
  State<extra> createState() => _extraState();
}

class _extraState extends State<extra> {
  int? a;
  SharedPreferences? prefs;
  bool status = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    forshareprense();
  }

  forshareprense() async {
    prefs = await SharedPreferences.getInstance();

    setState(() {
      a = prefs!.getInt("level") ?? 0;
      status = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: status?SafeArea(
            child: Column(
      children: [
        Text("$a"),
        ElevatedButton(
            onPressed: () {
              setState(() {
                a = a! + 1;
              });
              prefs!.setInt("level", a!);
            },
            child: Text("Increment"))
      ],
    ))   : Center(child:CircularProgressIndicator()),
    );
  }
}
