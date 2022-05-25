import 'package:flutter/material.dart';
import 'package:trando/pages/SecondPage.dart';
import '../data.dart';
import '../widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  initState() {
    super.initState();
    //Get Nad post task
    get();
    post();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ReusedBody(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondPage()));
        },
          progressBar: "assets/image/progressBar1.svg",
          voice: "I got a discount",
        ),
      ),
    );
  }
}
